% Código para obtener la gráfica
% de la relación de la masa de propelente frente al impulso específico 
% para una trayectoria de LEO a GEO y de GEO a LEO con cirucularización en cada una de ellas 
% con una masa final, o masa del cohete sin combustible de 10 toneladas. 

%-----------DATOS----------
incremento_v = 7.864*10^3;
m_cohete = 10^4;
g_0 = 9.80665;

%-----------Cálculos-------
I_s = linspace(150,500,10000);
m_propelente = m_cohete*((exp(incremento_v./(I_s*g_0)))-1);


%----------Gráfica---------
figure
subplot(1,1,1)
plot(I_s,m_propelente)
ylim([0,1000000])
xlabel('Impulso específico (s)','FontName','Times New Roman')
ylabel('Masa del propelente (kg)','FontName','Times New Roman')



%%
% Código para obtener la gráfica comentada
% de la relación de la masa de propelente frente al impulso específico 
% para una trayectoria de LEO a GEO y de GEO a LEO con cirucularización en cada una de ellas 
% con una masa final, o masa del cohete sin combustible de 10 toneladas. 

%-----------DATOS----------
incremento_v = 7.864*10^3;
m_cohete = 10^4;
g_0 = 9.80665;

%-----------Cálculos-------
I_s = linspace(250,550,10000);
m_propelente = m_cohete*((exp(incremento_v./(I_s*g_0)))-1);
m_max_propelente = 40000;
I_s_min_value = incremento_v/(log(5)*g_0);


%----------Gráfica---------
figure
subplot(1,1,1)
plot(I_s,m_propelente)
xline(I_s_min_value, '--', 'Color', [0.00 0.50 0.20], 'LineWidth', 1.5);
yline(m_max_propelente, '--', 'Color', [0.00 0.50 0.20], 'LineWidth', 1.5);
xlabel('Impulso específico (s)','FontName','Times New Roman')
ylabel('Masa del propelente (kg)','FontName','Times New Roman')


%%

%masa de propelente para cada caso: 
incremento_v = 7.864*10^3;
m_final = 10000;

%-----Gas frío de CO_2-----
I_s_g_frio = 61;
m_propelente_g_frio = m_cohete*((exp(incremento_v./(I_s_g_frio*g_0)))-1);
p_masa_propelente_g_frio = (m_propelente_g_frio / (m_propelente_g_frio + m_final))*100;
fprintf('La masa de propelente necesaria con gas frío es: %g kg; con un porcentage de propelente con respecto de la masa total de: %g\n',m_propelente_g_frio,p_masa_propelente_g_frio);



%-----Monopropelente de hidracina-----
I_s_mono_hidracina = 220;
m_propelente_m_hidracina = m_cohete*((exp(incremento_v./(I_s_mono_hidracina*g_0)))-1);
p_masa_propelente_mono_hidracina = (m_propelente_m_hidracina/ (m_propelente_m_hidracina + m_final))*100;
fprintf('La masa de propelente necesaria con monopropelente de hidrazina es: %g kg; con un porcentage de propelente con respecto de la masa total de: %g\n',m_propelente_m_hidracina,p_masa_propelente_mono_hidracina);



%----- Bipropelente de LOX (Liquid Oxigen) + CH_4 -----
I_s_LOX_CH4 = 380;
m_propelente_LOX_CH4 = m_cohete*((exp(incremento_v./(I_s_LOX_CH4 *g_0)))-1);
p_masa_propelente_LOX_CH4 = (m_propelente_LOX_CH4 / (m_propelente_LOX_CH4 + m_final))*100;
fprintf('La masa de propelente necesaria con Bipropelente de LOX (Liquid Oxigen) + CH_4 es: %g kg; con un porcentage de propelente con respecto de la masa total de: %g\n',m_propelente_LOX_CH4,p_masa_propelente_LOX_CH4);



%----- Bipropelente de LOX (Liquid Oxigen) + H_2 -----
I_s_LOX_H2 = 450;
m_propelente_LOX_H2 = m_cohete*((exp(incremento_v./(I_s_LOX_H2 *g_0)))-1);
p_masa_propelente_LOX_H2 = (m_propelente_LOX_H2 / (m_propelente_LOX_H2 + m_final))*100;
fprintf('La masa de propelente necesaria con Bipropelente de LOX (Liquid Oxigen) + CH_4 es: %g kg; con un porcentage de propelente con respecto de la masa total de: %g\n',m_propelente_LOX_H2,p_masa_propelente_LOX_H2);



%%

% Código para obtener la gráfica comentada con escala linear
% de la relación de la masa de propelente frente al impulso específico 
% para una trayectoria de LEO a GEO y de GEO a LEO con cirucularización en cada una de ellas 
% con una masa final, o masa del cohete sin combustible de 10 toneladas. 
% En esta gráfica se han añadido los impulsos específicos de Gas frío de CO_2
% Monopropelente de hidracina, Bipropelente de LOX (Liquid Oxigen) + CH_4, Bipropelente de LOX (Liquid Oxigen) + H_2

%-----------DATOS----------
incremento_v = 7.864*10^3;
m_cohete = 10^4;
g_0 = 9.80665;
I_s_g_frio = 61;
I_s_mono_hidracina = 220;
I_s_LOX_CH4 = 380;
I_s_LOX_H2 = 450;
I_s_list = [I_s_g_frio,I_s_mono_hidracina,I_s_LOX_CH4,I_s_LOX_H2];
m_propelente_g_frio = m_cohete*((exp(incremento_v./(I_s_g_frio*g_0)))-1);
m_propelente_m_hidracina = m_cohete*((exp(incremento_v./(I_s_mono_hidracina*g_0)))-1);
m_propelente_LOX_CH4 = m_cohete*((exp(incremento_v./(I_s_LOX_CH4 *g_0)))-1);
m_propelente_LOX_H2 = m_cohete*((exp(incremento_v./(I_s_LOX_H2 *g_0)))-1);
m_propelente_list = [m_propelente_g_frio,m_propelente_m_hidracina,m_propelente_LOX_CH4,m_propelente_LOX_H2];
I_s_min_value = incremento_v/((g_0)*log(5));
m_max_propelente = 40000;

%-----------Cálculos-------
I_s = linspace(55,550,10000);
m_propelente = m_cohete*((exp(incremento_v./(I_s*g_0)))-1);



%----------Gráfica---------
figure
subplot(1,1,1)
plot(I_s,m_propelente)
hold on 
xline(I_s_min_value, '--', 'Color', [0.00 0.50 0.20], 'LineWidth', 1.5);
yline(m_max_propelente, '--', 'Color', [0.00 0.50 0.20], 'LineWidth', 1.5);
xlabel('Impulso específico (s)','FontName','Times New Roman')
ylim([0,6*10^9])
ylabel('Masa del propelente (kg)','FontName','Times New Roman')
scatter(I_s_list,m_propelente_list,36,[0.55 0.20 0.85],'filled')
hold off


%%

% Código para obtener la gráfica comentada con escala logarítmica en el eje
% y
% de la relación de la masa de propelente frente al impulso específico 
% para una trayectoria de LEO a GEO y de GEO a LEO con cirucularización en cada una de ellas 
% con una masa final, o masa del cohete sin combustible de 10 toneladas. 
% En esta gráfica se han añadido los impulsos específicos de Gas frío de CO_2
% Monopropelente de hidracina, Bipropelente de LOX (Liquid Oxigen) + CH_4, Bipropelente de LOX (Liquid Oxigen) + H_2

%-----------DATOS----------
incremento_v = 7.864*10^3;
m_cohete = 10^4;
g_0 = 9.80665;
I_s_g_frio = 61;
I_s_mono_hidracina = 220;
I_s_LOX_CH4 = 380;
I_s_LOX_H2 = 450;
I_s_list = [I_s_g_frio,I_s_mono_hidracina,I_s_LOX_CH4,I_s_LOX_H2];
m_propelente_g_frio = m_cohete*((exp(incremento_v./(I_s_g_frio*g_0)))-1);
m_propelente_m_hidracina = m_cohete*((exp(incremento_v./(I_s_mono_hidracina*g_0)))-1);
m_propelente_LOX_CH4 = m_cohete*((exp(incremento_v./(I_s_LOX_CH4 *g_0)))-1);
m_propelente_LOX_H2 = m_cohete*((exp(incremento_v./(I_s_LOX_H2 *g_0)))-1);
m_propelente_list = [m_propelente_g_frio,m_propelente_m_hidracina,m_propelente_LOX_CH4,m_propelente_LOX_H2];
I_s_min_value = incremento_v/((g_0)*log(5));
m_max_propelente = 40000;

%-----------Cálculos-------
I_s = linspace(55,550,10000);
m_propelente = m_cohete*((exp(incremento_v./(I_s*g_0)))-1);



%----------Gráfica---------
figure
subplot(1,1,1)
semilogy(I_s, m_propelente)
hold on 
xline(I_s_min_value, '--', 'Color', [0.00 0.50 0.20], 'LineWidth', 1.5);
yline(m_max_propelente, '--', 'Color', [0.00 0.50 0.20], 'LineWidth', 1.5);
xlabel('Impulso específico (s)','FontName','Times New Roman')
ylim([0,9*10^9])
ylabel('Masa del propelente (kg)','FontName','Times New Roman')
scatter(I_s_list,m_propelente_list,36,[0.55 0.20 0.85],'filled')
hold off
