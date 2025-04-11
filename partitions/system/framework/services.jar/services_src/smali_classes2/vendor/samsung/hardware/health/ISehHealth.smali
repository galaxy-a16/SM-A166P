.class public interface abstract Lvendor/samsung/hardware/health/ISehHealth;
.super Ljava/lang/Object;
.source "ISehHealth.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string/jumbo v2, "vendor$samsung$hardware$health$ISehHealth"

    .line 272
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/health/ISehHealth;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract registerCallback(Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
.end method

.method public abstract sehWriteEnableToParam(IZ)V
.end method

.method public abstract unregisterCallback(Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
.end method

.method public abstract update()V
.end method
