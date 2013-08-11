requires 'Class::Load';
requires 'Cwd';
requires 'File::ShareDir';
requires 'File::Spec';
requires 'Moose';
requires 'MooseX::Singleton';
requires 'Params::Validate';
requires 'perl', '5.014000';

on build => sub {
    requires 'Test::More', '0.94';
};
