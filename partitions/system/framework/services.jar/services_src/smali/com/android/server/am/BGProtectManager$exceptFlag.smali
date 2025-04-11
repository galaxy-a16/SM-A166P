.class final enum Lcom/android/server/am/BGProtectManager$exceptFlag;
.super Ljava/lang/Enum;
.source "BGProtectManager.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;


# instance fields
.field private final value:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/BGProtectManager$exceptFlag;
    .locals 9

    .line 1032
    sget-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    sget-object v1, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    sget-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    sget-object v5, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    sget-object v6, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    sget-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    sget-object v8, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    filled-new-array/range {v0 .. v8}, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1033
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "NORMALANDKNOXPWHL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 1034
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "NORMALONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 1035
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "NORMALANDKNOX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 1036
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "KNOXONLY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 1037
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "SANDBOX"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 1038
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "CAMERAGUARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 1039
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "BROWSERMAIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 1040
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "HOMEHUB"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 1041
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "CAMERAMEDIA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 1032
    invoke-static {}, Lcom/android/server/am/BGProtectManager$exceptFlag;->$values()[Lcom/android/server/am/BGProtectManager$exceptFlag;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1044
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1045
    iput p3, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/BGProtectManager$exceptFlag;
    .locals 1

    .line 1032
    const-class v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/BGProtectManager$exceptFlag;
    .locals 1

    .line 1032
    sget-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v0}, [Lcom/android/server/am/BGProtectManager$exceptFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 0

    .line 1053
    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 1049
    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    return p0
.end method
