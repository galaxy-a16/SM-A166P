.class final enum Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
.super Ljava/lang/Enum;
.source "ExynosDisplayTune.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

.field public static final enum scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;


# instance fields
.field private final id:I


# direct methods
.method public static synthetic $values()[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
    .locals 15

    .line 156
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v2, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v3, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v4, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v5, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v6, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v7, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v8, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v9, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v10, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v11, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v12, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v13, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    sget-object v14, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    filled-new-array/range {v0 .. v14}, [Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 157
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->none:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "cgc_dither"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc_dither:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "degamma"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->degamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "gamma"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "gamma_matrix"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->gamma_matrix:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 158
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "hsc48_lcg_s"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v3, "hsc48_lcg_e"

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;ILcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;I)V

    sput-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc48_lcg_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "hsc"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->hsc:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v1, "scl"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->scl:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 159
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "cgc17_enc_s"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_s:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const/16 v2, 0xa

    const/16 v3, 0x33

    const-string v4, "cgc17_enc_e"

    invoke-direct {v1, v4, v2, v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;ILcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;I)V

    sput-object v1, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_enc_e:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "cgc17_dec"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_dec:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "cgc17_con"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->cgc17_con:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 160
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string v1, "de"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->de:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    const-string/jumbo v1, "max"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->max:Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    .line 156
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->$values()[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 165
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder$CalibCounter;->-$$Nest$sfgetnid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id:I

    add-int/lit8 p3, p3, 0x1

    .line 174
    invoke-static {p3}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder$CalibCounter;->-$$Nest$sfputnid(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;I)V
    .locals 0

    .line 169
    invoke-virtual {p3}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id()I

    move-result p3

    add-int/lit8 p4, p4, -0x1

    add-int/2addr p3, p4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
    .locals 1

    .line 156
    const-class v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    return-object p0
.end method

.method public static values()[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;
    .locals 1

    .line 156
    sget-object v0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->$VALUES:[Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    invoke-virtual {v0}, [Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;

    return-object v0
.end method


# virtual methods
.method public id()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$CalibOrder;->id:I

    return p0
.end method
