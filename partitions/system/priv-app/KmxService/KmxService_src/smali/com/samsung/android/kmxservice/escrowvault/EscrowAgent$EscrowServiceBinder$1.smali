.class Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->showUpdateAvailablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder$1;->this$1:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const-string p0, "KMX|EscrowAgent"

    const-string p1, "update app!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
