.class public abstract Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;
.super Ljava/lang/Object;
.source "OverlayChangeObserver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OverlayChangeObserver"


# instance fields
.field public callbackCompleted:Z

.field public mTimeoutRunnable:Ljava/lang/Runnable;

.field public mToken:I

.field public mUserId:I

.field public final overlayLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->overlayLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->callbackCompleted:Z

    new-instance v0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver$1;-><init>(Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V

    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mToken:I

    iput p2, p0, Lcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public abstract onChangeCompleted(ZI)V
.end method
