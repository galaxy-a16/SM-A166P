.class Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$2;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->confirmPassword(Landroid/content/Context;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

.field final synthetic val$consumer:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;Landroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$2;->this$0:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$2;->val$consumer:Ljava/util/function/Consumer;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onReceiveResult = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KMX|SamsungAccountManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$2;->val$consumer:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
