.class public final enum Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;
.super Ljava/lang/Enum;
.source "D2DHandshakeContext.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

.field public static final enum Initiator:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

.field public static final enum Responder:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;


# direct methods
.method public static synthetic $values()[Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;
    .locals 2

    .line 26
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Initiator:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Responder:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    filled-new-array {v0, v1}, [Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    const-string v1, "Initiator"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Initiator:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    .line 28
    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    const-string v1, "Responder"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->Responder:Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    .line 26
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->$values()[Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    move-result-object v0

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;
    .locals 1

    .line 26
    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    return-object p0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/D2DHandshakeContext$Role;

    return-object v0
.end method
