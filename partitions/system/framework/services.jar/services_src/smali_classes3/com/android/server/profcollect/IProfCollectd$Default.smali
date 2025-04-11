.class public Lcom/android/server/profcollect/IProfCollectd$Default;
.super Ljava/lang/Object;
.source "IProfCollectd.java"

# interfaces
.implements Lcom/android/server/profcollect/IProfCollectd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public get_supported_provider()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public process()V
    .locals 0

    .line 0
    return-void
.end method

.method public registerProviderStatusCallback(Lcom/android/server/profcollect/IProviderStatusCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public report(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public trace_once(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
