.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;
.super Landroid/database/ContentObserver;
.source "SemUdfpsTspManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->-$$Nest$misEnableWOF(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->-$$Nest$msetLpMode(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Z)V

    return-void
.end method
