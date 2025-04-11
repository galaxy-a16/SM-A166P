.class public Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;
.super Ljava/lang/Object;
.source "PolicyEnforcerCallbacks.java"


# instance fields
.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mValue:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public await(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PolicyEnforcerCallbacks"

    const-string p2, "Callback was not received"

    .line 158
    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public trigger(Ljava/lang/Boolean;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 153
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
