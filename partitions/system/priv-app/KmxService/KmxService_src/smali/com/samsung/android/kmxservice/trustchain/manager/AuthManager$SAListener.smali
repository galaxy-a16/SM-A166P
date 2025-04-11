.class public Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SAListener"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-static {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->a(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->b(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getMcc()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getRegionMcc()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->updateSaInfoIntoSaInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
