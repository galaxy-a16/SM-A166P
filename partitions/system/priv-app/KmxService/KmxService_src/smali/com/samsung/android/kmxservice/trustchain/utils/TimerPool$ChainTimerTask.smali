.class Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChainTimerTask"
.end annotation


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final mType:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;->mRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;->mType:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;->mType:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->NORMAL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
