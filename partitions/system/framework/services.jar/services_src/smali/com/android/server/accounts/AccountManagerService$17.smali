.class public Lcom/android/server/accounts/AccountManagerService$17;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$callback:Landroid/os/RemoteCallback;

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/os/RemoteCallback;)V
    .locals 0

    .line 4474
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$account:Landroid/accounts/Account;

    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$uid:I

    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$callback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleAuthenticatorResponse(Z)V
    .locals 4

    .line 4491
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$account:Landroid/accounts/Account;

    const-string v2, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$uid:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mgetCredentialPermissionNotificationId(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$uid:I

    .line 4493
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 4491
    invoke-static {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mcancelNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 4494
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$callback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    .line 4495
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "booleanResult"

    .line 4496
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4497
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 4487
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService$17;->handleAuthenticatorResponse(Z)V

    return-void
.end method

.method public onRequestContinued()V
    .locals 0

    .line 0
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 4477
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService$17;->handleAuthenticatorResponse(Z)V

    return-void
.end method
