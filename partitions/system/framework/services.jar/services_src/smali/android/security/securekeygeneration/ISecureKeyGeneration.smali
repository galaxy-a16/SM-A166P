.class public interface abstract Landroid/security/securekeygeneration/ISecureKeyGeneration;
.super Ljava/lang/Object;
.source "ISecureKeyGeneration.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$security$securekeygeneration$ISecureKeyGeneration"

    .line 165
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/securekeygeneration/ISecureKeyGeneration;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract generateSecureKey([Landroid/hardware/security/keymint/KeyParameter;[Landroid/hardware/security/keymint/KeyParameter;)Landroid/security/securekeygeneration/SecureKeyInfo;
.end method
