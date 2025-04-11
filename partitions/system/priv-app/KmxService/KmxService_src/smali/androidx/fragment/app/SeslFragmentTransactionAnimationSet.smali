.class public final enum Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

.field public static final enum Horizontal:Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;


# instance fields
.field private final enter:I

.field private final exit:I

.field private final popEnter:I

.field private final popExit:I


# direct methods
.method private static final synthetic $values()[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    const/4 v1, 0x0

    sget-object v2, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->Horizontal:Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 8

    new-instance v7, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    const-string v1, "Horizontal"

    const/4 v2, 0x0

    const v3, 0x7f01002c

    const v4, 0x7f01002d

    const v5, 0x7f01002a

    const v6, 0x7f01002b

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->Horizontal:Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    invoke-static {}, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->$values()[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->$VALUES:[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->enter:I

    iput p4, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->exit:I

    iput p5, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popEnter:I

    iput p6, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popExit:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;
    .locals 1

    const-class v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;
    .locals 1

    sget-object v0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->$VALUES:[Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;

    return-object v0
.end method


# virtual methods
.method public final getEnter$fragment_release()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->enter:I

    return p0
.end method

.method public final getExit$fragment_release()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->exit:I

    return p0
.end method

.method public final getPopEnter$fragment_release()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popEnter:I

    return p0
.end method

.method public final getPopExit$fragment_release()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/SeslFragmentTransactionAnimationSet;->popExit:I

    return p0
.end method
