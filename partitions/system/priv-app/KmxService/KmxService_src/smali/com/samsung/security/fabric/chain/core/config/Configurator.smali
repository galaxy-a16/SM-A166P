.class public final enum Lcom/samsung/security/fabric/chain/core/config/Configurator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/security/fabric/chain/core/config/Configurator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/security/fabric/chain/core/config/Configurator;

.field public static final enum INSTANCE:Lcom/samsung/security/fabric/chain/core/config/Configurator;


# instance fields
.field private configuration:Lga/a;
    .annotation build Llombok/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/security/fabric/chain/core/config/Configurator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/security/fabric/chain/core/config/Configurator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/security/fabric/chain/core/config/Configurator;->INSTANCE:Lcom/samsung/security/fabric/chain/core/config/Configurator;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/security/fabric/chain/core/config/Configurator;

    aput-object v0, v1, v2

    sput-object v1, Lcom/samsung/security/fabric/chain/core/config/Configurator;->$VALUES:[Lcom/samsung/security/fabric/chain/core/config/Configurator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/security/fabric/chain/core/config/Configurator;->configuration:Lga/a;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/16 v6, 0x64

    const/16 v3, 0x3a98

    const/4 p1, 0x0

    xor-int/lit8 v4, p1, 0x1

    const/16 v5, 0x3e8

    const/4 v7, 0x0

    new-instance p1, Lga/a;

    move-object v0, p1

    move v2, v6

    invoke-direct/range {v0 .. v7}, Lga/a;-><init>(Ljava/lang/String;IIIIIZ)V

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/config/Configurator;->configuration:Lga/a;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/config/Configurator;->INSTANCE:Lcom/samsung/security/fabric/chain/core/config/Configurator;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/config/Configurator;
    .locals 1

    const-class v0, Lcom/samsung/security/fabric/chain/core/config/Configurator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/config/Configurator;

    return-object p0
.end method

.method public static values()[Lcom/samsung/security/fabric/chain/core/config/Configurator;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/config/Configurator;->$VALUES:[Lcom/samsung/security/fabric/chain/core/config/Configurator;

    invoke-virtual {v0}, [Lcom/samsung/security/fabric/chain/core/config/Configurator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/security/fabric/chain/core/config/Configurator;

    return-object v0
.end method


# virtual methods
.method public getConfiguration()Lga/a;
    .locals 0
    .annotation build Llombok/Generated;
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/config/Configurator;->configuration:Lga/a;

    return-object p0
.end method

.method public setConfiguration(Lga/a;)V
    .locals 0
    .param p1    # Lga/a;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Llombok/Generated;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/config/Configurator;->configuration:Lga/a;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "configuration is marked non-null but is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
