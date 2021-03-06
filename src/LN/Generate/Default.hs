{-# LANGUAGE OverloadedStrings #-}

module LN.Generate.Default (
  defaultApiRequest,
  testApiRequest,
  defaultBoardRequest,
  testBoardRequest,
  defaultBucketRequest,
  testBucketRequest,
  defaultForumRequest,
  testForumRequest,
  defaultGlobalGroupRequest,
  testGlobalGroupRequest,
  defaultGroupRequest,
  defaultGroupMemberRequest,
  defaultLeuronRequest,
  dle,
  defaultLeuronTrainingRequest,
  defaultLikeRequest,
  testLikeRequest,
  defaultOrganizationRequest,
  testOrganizationRequest,
  defaultPmRequest,
  testPmRequest,
  defaultPmInRequest,
  testPmInRequest,
  defaultPmOutRequest,
  testPmOutRequest,
  defaultReminderRequest,
  defaultReminderFolderRequest,
  testReminderFolderRequest,
  defaultResourceRequest,
  testResourceRequest,
  defaultStarRequest,
  testStarRequest,
  defaultTeamRequest,
  defaultTeamMemberRequest,
  defaultThreadRequest,
  testThreadRequest,
  defaultThreadPostRequest,
  testThreadPostRequest,
  defaultUserRequest,
  testUserRequest,
  defaultProfileGender,
  defaultProfileRequest,
  testProfileRequest,
  defaultUTCTime
) where



import           Data.Time (UTCTime)
import           Prelude

import           LN.T



defaultApiRequest :: ApiRequest
defaultApiRequest = ApiRequest {
    apiRequestComment = Nothing,
    apiRequestGuard   = 0
}

testApiRequest :: ApiRequest
testApiRequest = defaultApiRequest {
    apiRequestComment = Just "test"
}



defaultBoardRequest :: BoardRequest
defaultBoardRequest = BoardRequest {
  boardRequestDisplayName        = "",
  boardRequestDescription        = Nothing,
  boardRequestIsAnonymous        = False,
  boardRequestCanCreateSubBoards = True,
  boardRequestCanCreateThreads   = True,
  boardRequestSuggestedTags      = [],
  boardRequestIcon               = Nothing,
  boardRequestTags               = [],
  boardRequestGuard              = 0,
  -- state
  boardRequestStateTag           = Nothing,
  boardRequestStateSuggestedTag  = Nothing
}

testBoardRequest :: BoardRequest
testBoardRequest = testBoardRequest {
  boardRequestDisplayName = "test",
  boardRequestDescription = Just "test"
}



defaultBucketRequest :: BucketRequest
defaultBucketRequest = BucketRequest {
  bucketRequestDisplayName  = "",
  bucketRequestDescription  = Nothing,
  bucketRequestScoreLo      = -1000,
  bucketRequestScoreHi      = 3,
  bucketRequestLeurons      = [],
  bucketRequestResources    = [],
  bucketRequestCategories   = [],
  bucketRequestFilters      = [],
  bucketRequestGuard        = 0
}

testBucketRequest :: BucketRequest
testBucketRequest = defaultBucketRequest {
  bucketRequestDisplayName  = "test",
  bucketRequestDescription  = Just "test"
}



defaultForumRequest :: ForumRequest
defaultForumRequest = ForumRequest {
  forumRequestDisplayName          = "",
  forumRequestDescription          = Nothing,
  forumRequestThreadsPerBoard      = 20,
  forumRequestThreadPostsPerThread = 20,
  forumRequestRecentThreadsLimit   = 10,
  forumRequestRecentPostsLimit     = 10,
  forumRequestMotwLimit            = 10,
  forumRequestIcon                 = Nothing,
  forumRequestTags                 = [],
  forumRequestVisibility           = Public,
  forumRequestGuard                = 0,
  -- state
  forumRequestStateTag             = Nothing
}

testForumRequest :: ForumRequest
testForumRequest = defaultForumRequest {
  forumRequestDisplayName          = "test",
  forumRequestDescription          = Just "test"
}



defaultGlobalGroupRequest :: GlobalGroupRequest
defaultGlobalGroupRequest = GlobalGroupRequest {
  globalGroupRequestDisplayName = "",
  globalGroupRequestDescription = Nothing,
  globalGroupRequestMembership  = Membership_Join,
  globalGroupRequestIcon        = Nothing,
  globalGroupRequestTags        = [],
  globalGroupRequestVisibility  = Public,
  globalGroupRequestGuard       = 0
}

testGlobalGroupRequest :: GlobalGroupRequest
testGlobalGroupRequest = defaultGlobalGroupRequest {
  globalGroupRequestDisplayName = "test",
  globalGroupRequestDescription = Just "test"
}



defaultGroupRequest :: GroupRequest
defaultGroupRequest = GroupRequest {
  groupRequestGuard = 0
}



defaultGroupMemberRequest :: GroupMemberRequest
defaultGroupMemberRequest = GroupMemberRequest {
  groupMemberRequestGuard = 0
}






defaultLeuronRequest :: LeuronRequest
defaultLeuronRequest = LeuronRequest {
  leuronRequestData          = LnEmpty,
  leuronRequestTitle         = Nothing,
  leuronRequestDescription   = Nothing,
  leuronRequestSection       = Nothing,
  leuronRequestPage          = Nothing,
  leuronRequestExamples      = Nothing,
  leuronRequestStrengths     = Nothing,
  leuronRequestCategories    = [],
  leuronRequestSplits        = Nothing,
  leuronRequestSubstitutions = Nothing,
  leuronRequestTags          = [],
  leuronRequestStyle         = Nothing,
  leuronRequestGuard         = 0
}

dle :: LeuronRequest
dle = defaultLeuronRequest



defaultLeuronTrainingRequest :: LeuronTrainingRequest
defaultLeuronTrainingRequest = LeuronTrainingRequest LTS_View 0



defaultLikeRequest :: LikeRequest
defaultLikeRequest = LikeRequest {
  likeRequestOpt    = Like,
  likeRequestReason = Nothing,
  likeRequestGuard  = 0
}


testLikeRequest :: LikeRequest
testLikeRequest = defaultLikeRequest { likeRequestReason = Just "test" }



defaultOrganizationRequest :: OrganizationRequest
defaultOrganizationRequest = OrganizationRequest {
  organizationRequestDisplayName = "",
  organizationRequestDescription = Nothing,
  organizationRequestCompany     = "",
  organizationRequestLocation    = "",
  organizationRequestEmail       = "",
  organizationRequestMembership  = Membership_Join,
  organizationRequestIcon        = Nothing,
  organizationRequestTags        = [],
  organizationRequestVisibility  = Public,
  organizationRequestGuard       = 0,
  -- state
  organizationRequestStateTag    = Nothing
}

testOrganizationRequest :: OrganizationRequest
testOrganizationRequest = defaultOrganizationRequest {
  organizationRequestDisplayName = "test",
  organizationRequestDescription = Just "test",
  organizationRequestCompany     = "test",
  organizationRequestLocation    = "test",
  organizationRequestEmail       = "test@test.com"
}



defaultPmRequest :: PmRequest
defaultPmRequest = PmRequest {
  pmRequestSubject = "",
  pmRequestBody    = "",
  pmRequestGuard   = 0
}

testPmRequest :: PmRequest
testPmRequest = defaultPmRequest {
  pmRequestSubject = "No subject.",
  pmRequestBody    = "No body."
}



defaultPmInRequest :: PmInRequest
defaultPmInRequest = PmInRequest {
  pmInRequestLabel     = Nothing,
  pmInRequestIsRead    = False,
  pmInRequestIsStarred = False,
  pmInRequestGuard     = 0
}

testPmInRequest :: PmInRequest
testPmInRequest = defaultPmInRequest { pmInRequestLabel = Just "test" }



defaultPmOutRequest :: PmOutRequest
defaultPmOutRequest = PmOutRequest {
  pmOutRequestLabel = Nothing,
  pmOutRequestGuard = 0
}

testPmOutRequest :: PmOutRequest
testPmOutRequest = defaultPmOutRequest { pmOutRequestLabel = Just "test" }



defaultReminderRequest :: ReminderRequest
defaultReminderRequest = ReminderRequest {
  reminderRequestData  = "Nothing to remind, apparently.",
  reminderRequestGuard = 0
}

defaultReminderFolderRequest :: ReminderFolderRequest
defaultReminderFolderRequest = ReminderFolderRequest {
  reminderFolderRequestDisplayName = "NoName",
  reminderFolderRequestDescription = Nothing,
  reminderFolderRequestVisibility  = Public,
  reminderFolderRequestGuard       = 0
}

testReminderFolderRequest :: ReminderFolderRequest
testReminderFolderRequest = defaultReminderFolderRequest { reminderFolderRequestDescription = Just "test" }



defaultResourceRequest :: ResourceRequest
defaultResourceRequest = ResourceRequest {
  resourceRequestDisplayName   = "",
  resourceRequestDescription   = "",
  resourceRequestSource        = SourceNone,
  resourceRequestAuthor        = Nothing,
  resourceRequestPrerequisites = [],
  resourceRequestCategories    = [],
  resourceRequestVisibility    = Public,
  resourceRequestCounter       = 0,
  resourceRequestVersion       = Nothing,
  resourceRequestUrls          = Nothing,
  resourceRequestIcon          = Nothing,
  resourceRequestTags          = [],
  resourceRequestGuard         = 0
}

testResourceRequest :: ResourceRequest
testResourceRequest = defaultResourceRequest {
  resourceRequestDisplayName   = "test",
  resourceRequestDescription   = "test",
  resourceRequestSource        = URL "https://www.adarq.org",
  resourceRequestAuthor        = Just ["test"]
}



defaultStarRequest :: StarRequest
defaultStarRequest = StarRequest {
  starRequestReason = Nothing,
  starRequestGuard  = 0
}

testStarRequest :: StarRequest
testStarRequest = defaultStarRequest { starRequestReason = Just "test" }



defaultTeamRequest :: TeamRequest
defaultTeamRequest = TeamRequest {
  teamRequestMembership  = Membership_Join,
  teamRequestIcon        = Nothing,
  teamRequestVisibility  = Public,
  teamRequestGuard       = 0
}



defaultTeamMemberRequest :: TeamMemberRequest
defaultTeamMemberRequest = TeamMemberRequest {
  teamMemberRequestGuard = 0
}



defaultThreadRequest :: ThreadRequest
defaultThreadRequest = ThreadRequest {
  threadRequestDisplayName = "",
  threadRequestDescription = Nothing,
  threadRequestSticky      = False,
  threadRequestLocked      = False,
  threadRequestPoll        = Nothing,
  threadRequestIcon        = Nothing,
  threadRequestTags        = [],
  threadRequestGuard       = 0,
  -- state
  threadRequestStateTag    = Nothing
}

testThreadRequest :: ThreadRequest
testThreadRequest = defaultThreadRequest {
  threadRequestDisplayName = "test",
  threadRequestDescription = Just "test"
}



defaultThreadPostRequest :: ThreadPostRequest
defaultThreadPostRequest = ThreadPostRequest {
  threadPostRequestTitle           = Nothing,
  threadPostRequestBody            = PostDataEmpty,
  threadPostRequestTags            = [],
  threadPostRequestPrivateTags     = [],
  threadPostRequestGuard           = 0,
  -- state
  threadPostRequestStateTag        = Nothing,
  threadPostRequestStatePrivateTag = Nothing
}

testThreadPostRequest :: ThreadPostRequest
testThreadPostRequest = defaultThreadPostRequest { threadPostRequestTitle = Just "test" }



defaultUserRequest :: UserRequest
defaultUserRequest = UserRequest {
  userRequestDisplayName = "",
  userRequestFullName    = "",
  userRequestEmail       = "",
  userRequestPlugin      = "",
  userRequestAcceptTOS   = Nothing
}

testUserRequest :: UserRequest
testUserRequest = defaultUserRequest {
  userRequestDisplayName = "test",
  userRequestFullName    = "test",
  userRequestEmail       = "test@test.com",
  userRequestPlugin      = "test"
}



defaultProfileGender :: ProfileGender
defaultProfileGender = GenderUnknown

defaultProfileRequest :: ProfileRequest
defaultProfileRequest = ProfileRequest {
  profileRequestGender        = defaultProfileGender,
  profileRequestBirthdate     = defaultUTCTime,
  profileRequestWebsite       = Nothing,
  profileRequestWebsites      = [],
  profileRequestLocation      = Nothing,
  profileRequestSignature     = Nothing,
  profileRequestDebug         = False,
  profileRequestGuard         = 0,
  -- state
  profileRequestStateWebsites = Nothing
}

testProfileRequest :: ProfileRequest
testProfileRequest = defaultProfileRequest {
  profileRequestWebsite   = Just "https://www.adarq.org",
  profileRequestLocation  = Just "FL",
  profileRequestSignature = Just "go get it."
}



defaultUTCTime :: UTCTime
defaultUTCTime = read "2016-01-01 00:00:00.0 UTC" :: UTCTime
