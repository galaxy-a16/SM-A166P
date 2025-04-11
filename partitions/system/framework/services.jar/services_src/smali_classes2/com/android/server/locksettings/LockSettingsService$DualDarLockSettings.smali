.class public Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# instance fields
.field public service:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    return-void
.end method


# virtual methods
.method public isDualDARUser(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
