.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;
.super Landroid/database/ContentObserver;
.source "SemFpOneHandModeMonitor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->-$$Nest$mhandleContentChanged(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;)V

    return-void
.end method
