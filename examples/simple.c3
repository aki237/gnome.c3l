module testtp;
import std::io;
import gtk;
import gio;
import adw;
import gobject;

fn void button_clicked(gtk::Button* button) {
  io::printfn("Printing the button label: %s", button.get_label());
}

fn void hello(gtk::Application* app) {
  gtk::Window* window = (gtk::Window*)gtk::application_window_new(app);
  gtk::Button* button = (gtk::Button*)gtk::button_new();

  button.set_label("Click me!");
  gobject::signal_connect_data(
    (void*)(button),
    "clicked",
    (Callback)(&button_clicked),
    null,
    null,
    gobject::CONNECT_FLAGS_DEFAULT,
  );
  
  window.set_title("Hello from c3!");
  window.set_default_size(100, 100);
  window.set_child(button.as_Widget());
  window.present();
}

fn int main(String[] args)
{
  gtk::init();
  adw::Application* app = adw::application_new(
    "com.example.text", gio::APPLICATION_FLAGS_DEFAULT_FLAGS,
  );

  gobject::signal_connect_data((void*)(app), "activate", (Callback)(&hello), null, null, gobject::CONNECT_FLAGS_DEFAULT);
  
  return ((gio::Application*)(app)).run(args.len, (ZString)(&args));
}
