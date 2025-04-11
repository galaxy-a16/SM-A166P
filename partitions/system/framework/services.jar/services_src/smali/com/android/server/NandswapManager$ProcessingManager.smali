.class public final Lcom/android/server/NandswapManager$ProcessingManager;
.super Ljava/lang/Object;
.source "NandswapManager.java"


# instance fields
.field public countList:Ljava/util/ArrayList;

.field public objReads:I

.field public objWrites:I

.field public reads:I

.field public sizeList:Ljava/util/ArrayList;

.field public writes:I


# direct methods
.method public static bridge synthetic -$$Nest$mcalcCountAverage(Lcom/android/server/NandswapManager$ProcessingManager;)D
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcCountAverage()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mcalcSizeAverage(Lcom/android/server/NandswapManager$ProcessingManager;)D
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcSizeAverage()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mclearAllList(Lcom/android/server/NandswapManager$ProcessingManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->clearAllList()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPreviousObjReads(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousObjReads()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPreviousObjWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousObjWrites()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPreviousReads(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousReads()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPreviousWrites(Lcom/android/server/NandswapManager$ProcessingManager;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousWrites()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetCount(Lcom/android/server/NandswapManager$ProcessingManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/NandswapManager$ProcessingManager;->setCount(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPreviousValue(Lcom/android/server/NandswapManager$ProcessingManager;IIII)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NandswapManager$ProcessingManager;->setPreviousValue(IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSize(Lcom/android/server/NandswapManager$ProcessingManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/NandswapManager$ProcessingManager;->setSize(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1022
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 1023
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 1024
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 1025
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/NandswapManager$ProcessingManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final calcAverage(I)D
    .locals 9

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1052
    iget-object p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v3, p1

    .line 1053
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v5, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1054
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v7, p1

    add-double/2addr v5, v7

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1057
    iget-object p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v3, p1

    .line 1058
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v5, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1059
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v7, p1

    add-double/2addr v5, v7

    goto :goto_1

    :cond_1
    move-wide v3, v1

    move-wide v5, v3

    :cond_2
    cmpl-double p0, v3, v1

    if-nez p0, :cond_3

    return-wide v1

    :cond_3
    div-double/2addr v5, v3

    return-wide v5
.end method

.method public final calcCountAverage()D
    .locals 2

    const/4 v0, 0x1

    .line 1035
    invoke-virtual {p0, v0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final calcSizeAverage()D
    .locals 2

    const/4 v0, 0x2

    .line 1038
    invoke-virtual {p0, v0}, Lcom/android/server/NandswapManager$ProcessingManager;->calcAverage(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final clearAllList()V
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1043
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getPreviousObjReads()I
    .locals 0

    .line 1089
    iget p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    return p0
.end method

.method public final getPreviousObjWrites()I
    .locals 0

    .line 1092
    iget p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    return p0
.end method

.method public final getPreviousReads()I
    .locals 0

    .line 1083
    iget p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    return p0
.end method

.method public final getPreviousWrites()I
    .locals 0

    .line 1086
    iget p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    return p0
.end method

.method public final setCount(I)V
    .locals 0

    .line 1028
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setPreviousValue(IIII)V
    .locals 0

    .line 1077
    iput p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 1078
    iput p2, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 1079
    iput p3, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 1080
    iput p4, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
