# Getting start
====================

Para Iniciar o desenvolvimento, devem ser executados os comandos

* bundle
* rake db:create
* rake db:migrate
* rake db:seed

Usuário: admin
Senha: admin

### Algumas dicas para o desenvolvimento
1. Depois de criar um model e seu migration (com todas os atributos necessários), usar o comando:
`rails generate scaffold NomeDoModel` esse comando vai gerar as classes de controller, views e todos as
classes de testes necessárias.
1. Sempre que escrever um helper, escrever um teste para ele assim que possível.
1. Sempre fazer `git pull origin master` corrigir os conflitos, rodar os testes e só fazer.
`git push origin master` se os testes estiverem passando.
1. Não deixar texto puro nas views, sempre usar a intenacionalização (`t('codigo.para.o.texto')`).
1. Cuidado nas consultas, existe uma gem instalada que avisa quando uma consulta é ruim ou pode causar lentidão.
1. Procurar seguir as boas práticas dos guias [The Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)
e [The Rails Style Guide](https://github.com/bbatsov/rails-style-guide)
1. Existe uma gem instalada, chamada rubocop, que ajuda a detectar más práticas de ruby, basta executar `rubocop`

### Testes
> **Rule of thumb:** Fazer muitos testes unitários e poucos de integração.

* Para criar fixture, sempre usar o factory_girl
* Usar o Faker para criar dados fictícios para os testes, ou seja, usar em conjunto com o factory_girl

### RSpec
* [rspec-rails](http://www.rubydoc.info/gems/rspec-rails/frames)
* [RSpec Expectations](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers)
* [View specs](https://www.relishapp.com/rspec/rspec-rails/v/3-4/docs/view-specs/view-spec-infers-controller-path-and-action)

### Links para ajudar nos testes
* [factory_girl - Getting Started](https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md)
* [faker](https://github.com/ducknorris/faker)
* [factory_girl + faker](http://kronosapiens.github.io/blog/2014/04/27/setting-up-a-test-suite-with-factorygirl-and-faker.html)
* [Teste para checar as habilidades de cada papel](https://github.com/ryanb/railscasts/blob/master/spec/models/ability_spec.rb)
* [How We Test Rails Applications](https://robots.thoughtbot.com/how-we-test-rails-applications)
* [How to Write Rails View Test With RSpec](http://ruby-journal.com/how-to-write-rails-view-test-with-rspec/)

# Links úteis
* [Ruby on Rails Guides](http://guides.rubyonrails.org/)
* [RuboCop](https://github.com/bbatsov/rubocop)
* [Bullet](https://github.com/flyerhzm/bullet)
* [SimpleCov](https://github.com/colszowka/simplecov)