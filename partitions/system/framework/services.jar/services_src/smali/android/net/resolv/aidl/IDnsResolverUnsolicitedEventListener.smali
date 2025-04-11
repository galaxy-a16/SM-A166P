.class public interface abstract Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;
.super Ljava/lang/Object;
.source "IDnsResolverUnsolicitedEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final DNS_HEALTH_RESULT_OK:I = 0x0

.field public static final DNS_HEALTH_RESULT_TIMEOUT:I = 0xff

.field public static final HASH:Ljava/lang/String; = "882638dc86e8afd0924ecf7c28db6cce572f7e7d"

.field public static final PREFIX_OPERATION_ADDED:I = 0x1

.field public static final PREFIX_OPERATION_REMOVED:I = 0x2

.field public static final VALIDATION_RESULT_FAILURE:I = 0x2

.field public static final VALIDATION_RESULT_SUCCESS:I = 0x1

.field public static final VERSION:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$net$resolv$aidl$IDnsResolverUnsolicitedEventListener"

    .line 227
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract onDnsHealthEvent(Landroid/net/resolv/aidl/DnsHealthEventParcel;)V
.end method

.method public abstract onNat64PrefixEvent(Landroid/net/resolv/aidl/Nat64PrefixEventParcel;)V
.end method

.method public abstract onPrivateDnsValidationEvent(Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;)V
.end method
