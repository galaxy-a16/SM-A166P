.class public final enum Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

.field public static final enum ATTEST_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

.field public static final enum FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

.field public static final enum KEM_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

.field public static final enum LINK_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

.field public static final enum MEMBER_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

.field public static final enum SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->MEMBER_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->LINK_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->ATTEST_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->KEM_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    const/4 v1, 0x0

    const-string v2, "fabric_key"

    const-string v3, "FABRIC_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->FABRIC_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    const/4 v1, 0x1

    const-string v2, "service_key"

    const-string v3, "SERVICE_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->SERVICE_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    const/4 v1, 0x2

    const-string v2, "member_key"

    const-string v3, "MEMBER_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->MEMBER_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    const/4 v1, 0x3

    const-string v2, "link_key"

    const-string v3, "LINK_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->LINK_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    const/4 v1, 0x4

    const-string v2, "attest_key"

    const-string v3, "ATTEST_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->ATTEST_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    new-instance v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    const/4 v1, 0x5

    const-string v2, "kem_key"

    const-string v3, "KEM_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->KEM_KEY:Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-static {}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->$values()[Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->$VALUES:[Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->$VALUES:[Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/FabricKeyFactory$KeyType;

    return-object v0
.end method
