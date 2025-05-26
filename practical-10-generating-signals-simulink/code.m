% Practical 10 – Generating Signals Using Simulink

% Launch Simulink
simulink;

% Create a new model
modelName = 'signal_generation_model';
new_system(modelName);
open_system(modelName);

% Add Sine Wave block
add_block('simulink/Sources/Sine Wave', [modelName '/Sine Wave'], 'Position', [100, 100, 150, 130]);

% Add Scope block
add_block('simulink/Sinks/Scope', [modelName '/Scope'], 'Position', [300, 100, 350, 130]);

% Connect the blocks
add_line(modelName, 'Sine Wave/1', 'Scope/1');

% Save and run the model
save_system(modelName);
set_param(modelName, 'SimulationCommand', 'start');
