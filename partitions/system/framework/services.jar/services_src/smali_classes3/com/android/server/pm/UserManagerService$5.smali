.class public Lcom/android/server/pm/UserManagerService$5;
.super Landroid/app/IStopUserCallback$Stub;
.source "UserManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic val$userData:Lcom/android/server/pm/UserManagerService$UserData;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0

    .line 6086
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$5;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 4

    .line 6101
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p1

    .line 6102
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserJourneyLogger(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$5;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 6105
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserJourneyLogger(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$5;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/16 v1, 0x9

    .line 6106
    invoke-virtual {v0, p1, p0, v1, v3}, Lcom/android/server/pm/UserJourneyLogger;->logDelayedUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    return-void
.end method

.method public userStopped(I)V
    .locals 4

    .line 6089
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mfinishRemoveUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 6090
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p1

    .line 6091
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserJourneyLogger(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$5;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 6094
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmUserJourneyLogger(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserJourneyLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$5;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/16 v1, 0x9

    .line 6095
    invoke-virtual {v0, p1, p0, v1, v3}, Lcom/android/server/pm/UserJourneyLogger;->logDelayedUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    return-void
.end method
