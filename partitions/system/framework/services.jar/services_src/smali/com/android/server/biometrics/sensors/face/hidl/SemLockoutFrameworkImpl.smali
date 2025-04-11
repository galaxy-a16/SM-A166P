.class public Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;
.super Ljava/lang/Object;
.source "SemLockoutFrameworkImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mLockoutFailedAttempts:Landroid/util/SparseIntArray;

.field public final mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

.field public final mLockoutReceiver:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutReceiver;

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;

.field public mLockoutRunningTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    .line 64
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    .line 65
    new-instance p2, Landroid/util/SparseLongArray;

    invoke-direct {p2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    .line 66
    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 67
    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutReceiver;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutReceiver;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutReceiver-IA;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutReceiver:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutReceiver;

    .line 69
    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.bio.face.permission.RESET_FACE_LOCKOUT"

    invoke-virtual {p1, p2, p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addFailedAttemptForUser(I)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 98
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->addFailedAttempt(II)V

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->getLockoutMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->scheduleLockoutResetForUser(I)V

    .line 104
    :cond_1
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFailedAttemptForUser : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", user : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemLockoutFrameworkImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final cancelLockoutResetForUser(I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final getLockoutMode(I)I
    .locals 11

    .line 120
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    const-string v1, "SemLockoutFrameworkImpl"

    const/4 v2, 0x2

    const/16 v3, 0x14

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->getFailedAttempts(I)I

    move-result v0

    if-lt v0, v3, :cond_0

    const-string p0, "LO : integrated"

    .line 122
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, p1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    const-wide/16 v9, 0x7530

    add-long/2addr v6, v9

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v6, v9

    iput-wide v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutRunningTime:J

    if-lt p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    if-eq p1, p0, :cond_2

    const/16 p0, 0xa

    if-eq p1, p0, :cond_2

    const/16 p0, 0xf

    if-ne p1, p0, :cond_3

    :cond_2
    cmp-long p0, v6, v4

    if-lez p0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v8

    .line 138
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "LO : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getLockoutModeForUser(I)I
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->getLockoutMode(I)I

    move-result p0

    return p0
.end method

.method public final getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .locals 2

    .line 153
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "lockout_reset_user"

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0xc000000

    .line 153
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getRemainingLockoutTime(I)I
    .locals 2

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->getLockoutMode(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 114
    iget-wide p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutRunningTime:J

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public resetFailedAttempts(Z)V
    .locals 1

    .line 91
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method public resetFailedAttemptsForUser(ZI)V
    .locals 2

    .line 74
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetFailedAttempts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemLockoutFrameworkImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 78
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    if-eqz p1, :cond_1

    .line 79
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, p2, v0}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->resetFailedAttempts(II)V

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->cancelLockoutResetForUser(I)V

    .line 87
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    invoke-interface {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;->onLockoutReset(I)V

    return-void
.end method

.method public final scheduleLockoutResetForUser(I)V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x2

    .line 147
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method
