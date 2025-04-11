.class Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->ensureSetPpp(Ljava/lang/String;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

.field final synthetic val$requestCode:I

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;->val$serviceName:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;->val$requestCode:I

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;->val$serviceName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$1;->val$requestCode:I

    const/16 v0, 0x6a

    const/4 v1, 0x0

    invoke-static {p1, p2, p0, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->s(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;IILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
