.class public abstract Lcom/android/server/vibrator/Vibration;
.super Ljava/lang/Object;
.source "Vibration.java"


# static fields
.field public static final DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

.field public final callerToken:Landroid/os/IBinder;

.field public final id:J

.field public final stats:Lcom/android/server/vibrator/VibrationStats;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG_DATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/vibrator/Vibration;->sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/vibrator/VibrationStats;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibrationStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/server/vibrator/Vibration;->sNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 107
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->callerToken:Landroid/os/IBinder;

    .line 108
    iput-object p2, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    return-void
.end method


# virtual methods
.method public abstract isRepeating()Z
.end method
