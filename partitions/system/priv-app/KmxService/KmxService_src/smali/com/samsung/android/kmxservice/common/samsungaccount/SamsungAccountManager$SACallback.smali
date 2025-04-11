.class Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;
.super Lcom/msc/sa/aidl/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SACallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOnComplete:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    invoke-direct {p0}, Lcom/msc/sa/aidl/b;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->mOnComplete:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->mOnComplete:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->parseResult(IZLandroid/os/Bundle;)Z

    return-void
.end method

.method private parseResult(IZLandroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    new-instance v1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->f(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    const/16 v0, 0x64

    const/4 v1, 0x1

    const-string v2, "KMX|SamsungAccountManager"

    if-ne v0, p1, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    new-instance p1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    const-string p2, "user_id"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mcc"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "region_mcc"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, v0, v2, p3}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->f(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    return v1

    :cond_1
    const-string p2, "error_code"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SAC_0402"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->d(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "SAC_402 error"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->mContext:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountDelegateActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x30000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance p3, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback$1;-><init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;Landroid/os/Handler;I)V

    const-string p1, "resultReceiver"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "kmx_client_id"

    const-string p3, "f1gxtygekn"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "request_code"

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p3

    :cond_2
    const-string p0, "onReceiveAuthCode : errorCode = "

    const-string p1, ", errorMessage = "

    invoke-static {p0, p2, p1}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "error_message"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    :goto_0
    const-string p0, "onReceiveAuthCode : resultData is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SACallback.onReceiveAccessToken reqID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSuccess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|SamsungAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->parseResult(IZLandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->mOnComplete:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "SACallback.onReceiveAuthCode i = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", b = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SamsungAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "SACallback.onReceiveChecklistValidation i = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", b = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SamsungAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveClearConsentData(IZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "SACallback.onReceiveClearConsentData i = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", b = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SamsungAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "SACallback.onReceiveDisclaimerAgreement i = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", b = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SamsungAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "SACallback.onReceivePasswordConfirmation i = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", b = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SamsungAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveRLControlFMM(IZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "SACallback.onReceiveRLControlFMM i = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", b = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SamsungAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveRequiredConsent(IZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "SACallback.onReceiveRequiredConsent i = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", b = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SamsungAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveRubinRequest(IZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "SACallback.onReceiveRubinRequest i = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", b = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SamsungAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "SACallback.onReceiveSCloudAccessToken i = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", b = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SamsungAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
