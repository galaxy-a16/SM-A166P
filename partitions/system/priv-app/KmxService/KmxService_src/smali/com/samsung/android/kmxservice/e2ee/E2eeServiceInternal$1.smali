.class Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal$1;
.super Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal$1;->this$0:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(IILandroid/os/Bundle;)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal$1;->this$0:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-static {p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->a(Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Chain service activation is completed"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal$1;->this$0:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->b(Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->handleComplete(I)V

    return-void
.end method
