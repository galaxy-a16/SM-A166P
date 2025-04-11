.class public Lcom/android/server/locksettings/SyntheticPasswordDump;
.super Ljava/lang/Object;
.source "SyntheticPasswordDump.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    const-string p0, "SyntheticPasswordDump_SDP"

    const-string p1, "Dump not supported for this device"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
