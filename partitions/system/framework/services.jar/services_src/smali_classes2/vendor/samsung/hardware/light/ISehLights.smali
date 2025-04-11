.class public interface abstract Lvendor/samsung/hardware/light/ISehLights;
.super Ljava/lang/Object;
.source "ISehLights.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string/jumbo v2, "vendor$samsung$hardware$light$ISehLights"

    .line 255
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/light/ISehLights;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract getLights()[Lvendor/samsung/hardware/light/SehHwLight;
.end method

.method public abstract setLightState(ILandroid/hardware/light/HwLightState;I)V
.end method
