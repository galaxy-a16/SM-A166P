.class public final enum Lcom/fasterxml/jackson/databind/cfg/EnumFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/cfg/EnumFeature;",
        ">;",
        "Lcom/fasterxml/jackson/databind/cfg/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

.field public static final enum BOGUS_FEATURE:Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

.field private static final FEATURE_INDEX:I


# instance fields
.field private final _enabledByDefault:Z

.field private final _mask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

    const-string v1, "BOGUS_FEATURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->BOGUS_FEATURE:Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

    aput-object v0, v1, v2

    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->_enabledByDefault:Z

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->_mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/EnumFeature;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/cfg/EnumFeature;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/cfg/EnumFeature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->_enabledByDefault:Z

    return p0
.end method

.method public enabledIn(I)Z
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->_mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public featureIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMask()I
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/cfg/EnumFeature;->_mask:I

    return p0
.end method
