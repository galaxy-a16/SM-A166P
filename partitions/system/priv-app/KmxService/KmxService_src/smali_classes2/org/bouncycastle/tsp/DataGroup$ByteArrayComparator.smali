.class Lorg/bouncycastle/tsp/DataGroup$ByteArrayComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/DataGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ByteArrayComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/tsp/DataGroup;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/tsp/DataGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/tsp/DataGroup$ByteArrayComparator;->this$0:Lorg/bouncycastle/tsp/DataGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/tsp/DataGroup;Lorg/bouncycastle/tsp/DataGroup$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/DataGroup$ByteArrayComparator;-><init>(Lorg/bouncycastle/tsp/DataGroup;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length v0, p2

    if-ge p0, v0, :cond_0

    array-length p0, p1

    goto :goto_0

    :cond_0
    array-length p0, p2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eq v0, p0, :cond_2

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    if-eq v1, v2, :cond_1

    sub-int/2addr v1, v2

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0
.end method
