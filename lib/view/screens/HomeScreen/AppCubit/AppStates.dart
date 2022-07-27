abstract class AppStates {}

class AppInitialState extends AppStates {}
class SelectItem extends AppStates {}
class ChangeHover extends AppStates {}
//**** IMAGE PICKER ****//
class SocialCoverImagePickedSuccessState extends AppStates {}
class SocialCoverImagePickedErrorState extends AppStates {}
//****** Info STATES ******//

class InfoLoadingState extends AppStates {}
class InfoSuccessState extends AppStates {}
class InfoErrorState extends AppStates {}

//****** FIRST SECTION STATES ******//
class FirstSectionLoadingState extends AppStates {}
class FirstSectionSuccessState extends AppStates {}
class FirstSectionErrorState extends AppStates {}
//****** HOW TO FEED STATES ******//
class HowToFeedLoadingState extends AppStates {}
class HowToFeedSuccessState extends AppStates {}
class HowToFeedErrorState extends AppStates {}
//****** SEND FILTER STATES ******//
class GetFindLoadingState extends AppStates {}
class GetFindSuccessState extends AppStates {}
class GetFindErrorState extends AppStates {}