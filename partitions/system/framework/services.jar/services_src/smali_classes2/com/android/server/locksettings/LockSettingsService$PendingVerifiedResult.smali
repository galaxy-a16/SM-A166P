.class public Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# instance fields
.field public final mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

.field public final mPasswordMetrics:Landroid/app/admin/PasswordMetrics;

.field public final mSyntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mSyntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    return-void
.end method
