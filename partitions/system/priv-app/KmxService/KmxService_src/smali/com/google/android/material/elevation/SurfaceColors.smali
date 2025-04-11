.class public final enum Lcom/google/android/material/elevation/SurfaceColors;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/elevation/SurfaceColors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_0:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_1:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_2:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_3:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_4:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_5:Lcom/google/android/material/elevation/SurfaceColors;


# instance fields
.field private final elevationResId:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/material/elevation/SurfaceColors;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/material/elevation/SurfaceColors;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_0:Lcom/google/android/material/elevation/SurfaceColors;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_1:Lcom/google/android/material/elevation/SurfaceColors;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_2:Lcom/google/android/material/elevation/SurfaceColors;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_3:Lcom/google/android/material/elevation/SurfaceColors;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_4:Lcom/google/android/material/elevation/SurfaceColors;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_5:Lcom/google/android/material/elevation/SurfaceColors;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/material/elevation/SurfaceColors;

    const/4 v1, 0x0

    const v2, 0x7f0601b2

    const-string v3, "SURFACE_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_0:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v0, Lcom/google/android/material/elevation/SurfaceColors;

    const/4 v1, 0x1

    const v2, 0x7f0601b3

    const-string v3, "SURFACE_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_1:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v0, Lcom/google/android/material/elevation/SurfaceColors;

    const/4 v1, 0x2

    const v2, 0x7f0601b4

    const-string v3, "SURFACE_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_2:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v0, Lcom/google/android/material/elevation/SurfaceColors;

    const/4 v1, 0x3

    const v2, 0x7f0601b5

    const-string v3, "SURFACE_3"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_3:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v0, Lcom/google/android/material/elevation/SurfaceColors;

    const/4 v1, 0x4

    const v2, 0x7f0601b6

    const-string v3, "SURFACE_4"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_4:Lcom/google/android/material/elevation/SurfaceColors;

    new-instance v0, Lcom/google/android/material/elevation/SurfaceColors;

    const/4 v1, 0x5

    const v2, 0x7f0601b7

    const-string v3, "SURFACE_5"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_5:Lcom/google/android/material/elevation/SurfaceColors;

    invoke-static {}, Lcom/google/android/material/elevation/SurfaceColors;->$values()[Lcom/google/android/material/elevation/SurfaceColors;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->$VALUES:[Lcom/google/android/material/elevation/SurfaceColors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/material/elevation/SurfaceColors;->elevationResId:I

    return-void
.end method

.method public static getColorForElevation(Landroid/content/Context;F)I
    .locals 3

    new-instance v0, Le4/a;

    invoke-direct {v0, p0}, Le4/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f03011d

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lva/n;->p(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Le4/a;->a(FI)I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/elevation/SurfaceColors;
    .locals 1

    const-class v0, Lcom/google/android/material/elevation/SurfaceColors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/elevation/SurfaceColors;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/elevation/SurfaceColors;
    .locals 1

    sget-object v0, Lcom/google/android/material/elevation/SurfaceColors;->$VALUES:[Lcom/google/android/material/elevation/SurfaceColors;

    invoke-virtual {v0}, [Lcom/google/android/material/elevation/SurfaceColors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/elevation/SurfaceColors;

    return-object v0
.end method


# virtual methods
.method public getColor(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/elevation/SurfaceColors;->elevationResId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/material/elevation/SurfaceColors;->getColorForElevation(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method
