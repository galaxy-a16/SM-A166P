.class Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleared()V
    .locals 0

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt1/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->C(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Lcom/andrognito/patternlockview/PatternLockView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->U(Lcom/andrognito/patternlockview/PatternLockView;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pattern = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|VerifyPppDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->showProgressBar(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->G(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->T(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->C(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Lcom/andrognito/patternlockview/PatternLockView;

    move-result-object v2

    const-string v3, "#0000FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/andrognito/patternlockview/PatternLockView;->setCorrectStateColor(I)V

    const-string v2, "ppp"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->x(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "device_ID"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "verifier_type"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->E(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Landroid/os/ResultReceiver;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onProgress(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt1/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStarted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->t(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->initDetailMessage()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment$2;->this$0:Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;->H(Lcom/samsung/android/kmxservice/escrowvault/ui/VerifyPppDialogFragment;)V

    :cond_0
    return-void
.end method
