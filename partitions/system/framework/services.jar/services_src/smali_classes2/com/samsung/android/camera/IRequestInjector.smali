.class public interface abstract Lcom/samsung/android/camera/IRequestInjector;
.super Ljava/lang/Object;
.source "IRequestInjector.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "com$samsung$android$camera$IRequestInjector"

    .line 207
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/IRequestInjector;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract applyRequests([Landroid/os/PersistableBundle;)V
.end method

.method public abstract clearRequests()V
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method
