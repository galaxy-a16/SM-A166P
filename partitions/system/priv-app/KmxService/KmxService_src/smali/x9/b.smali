.class public final Lx9/b;
.super Lp1/f;
.source "SourceFile"


# instance fields
.field public final synthetic k:I

.field public final synthetic l:Lx9/c;


# direct methods
.method public constructor <init>(Lx9/c;I)V
    .locals 0

    iput-object p1, p0, Lx9/b;->l:Lx9/c;

    iput p2, p0, Lx9/b;->k:I

    invoke-direct {p0}, Lp1/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lx9/b;->l:Lx9/c;

    iget-object v1, v0, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    check-cast v1, Lz9/a;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    invoke-direct {p3, v2, v3, p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;-><init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    invoke-virtual {v1, p3}, Lz9/a;->c(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;)V

    iget-object p1, v0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    mul-int/lit8 p2, p2, -0x1

    iget p0, p0, Lx9/b;->k:I

    invoke-static {p1, p0, p2}, Lh3/a;->Y(Landroid/content/Context;II)V

    return-void
.end method

.method public final F()V
    .locals 0

    return-void
.end method
