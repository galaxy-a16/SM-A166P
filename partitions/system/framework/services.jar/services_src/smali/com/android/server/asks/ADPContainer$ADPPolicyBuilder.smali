.class public Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
.super Ljava/lang/Object;
.source "ADPContainer.java"


# instance fields
.field public format:Ljava/lang/String;

.field public hashCode:Ljava/lang/String;

.field public pattern:Ljava/lang/String;

.field public versionType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createADPPolicy()Lcom/android/server/asks/ADPContainer$ADPPolicy;
    .locals 4

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public flush()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-void
.end method

.method public set_format(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-object p0
.end method

.method public set_hashCode(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    return-object p0
.end method

.method public set_pattern(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public set_versionType(I)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    return-object p0
.end method
