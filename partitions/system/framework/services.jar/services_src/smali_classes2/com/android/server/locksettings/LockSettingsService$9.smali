.class public Lcom/android/server/locksettings/LockSettingsService$9;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 7075
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 7078
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    const-string p0, "LockSettingsService"

    const-string v0, "!@ Reset SecurityDebugLevel = low"

    .line 7079
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
