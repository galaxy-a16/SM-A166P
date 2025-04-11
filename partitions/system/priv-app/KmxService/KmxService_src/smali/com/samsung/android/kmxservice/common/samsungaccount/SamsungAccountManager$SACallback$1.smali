.class Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->parseResult(IZLandroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;

.field final synthetic val$reqId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback$1;->this$1:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;

    iput p3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback$1;->val$reqId:I

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceiveResult = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|SamsungAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback$1;->this$1:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;

    iget v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback$1;->val$reqId:I

    invoke-static {p1, v0, p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->c(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;ILandroid/os/Bundle;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback$1;->this$1:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;->a(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$SACallback;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
