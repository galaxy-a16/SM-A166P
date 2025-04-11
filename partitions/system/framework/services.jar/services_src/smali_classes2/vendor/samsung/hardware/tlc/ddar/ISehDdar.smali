.class public interface abstract Lvendor/samsung/hardware/tlc/ddar/ISehDdar;
.super Ljava/lang/Object;
.source "ISehDdar.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string/jumbo v2, "vendor$samsung$hardware$tlc$ddar$ISehDdar"

    .line 627
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/tlc/ddar/ISehDdar;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract authenticate(I[B[B[B)I
.end method

.method public abstract changePassword(I[B[B[B)I
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract initializeDdar(I[B[B[B)I
.end method

.method public abstract initiate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract setPassword(I[B[B[B)I
.end method

.method public abstract terminate(ILjava/lang/String;)I
.end method
