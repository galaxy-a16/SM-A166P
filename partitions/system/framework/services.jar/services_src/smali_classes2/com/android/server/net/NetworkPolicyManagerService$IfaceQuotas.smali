.class public final Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# instance fields
.field public final iface:Ljava/lang/String;

.field public final limit:J

.field public final warning:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 6129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6130
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    .line 6131
    iput-wide p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->warning:J

    .line 6132
    iput-wide p4, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJLcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method
