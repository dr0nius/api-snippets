// In Package Manager, run:
// Install-Package Twilio.Mvc -DependencyVersion HighestMinor

using Twilio.Mvc;
using Twilio.TwiML;
using Twilio.TwiML.Mvc;

public class VoiceController : TwilioController
{
  // /Voice
  public TwiMLResult Index(VoiceRequest request)
  {
    var response = new TwilioResponse();
    response.Say("Hello. It's me.");
    response.Play("http://dpro.rocks/the-more-you-know.mp3");
    return TwiML(response);
  }
}