.class public final Lec/m;
.super Lbc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lec/o;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lec/o;II)V
    .locals 0

    iput-object p2, p0, Lec/m;->e:Lec/o;

    iput p3, p0, Lec/m;->f:I

    iput p4, p0, Lec/m;->g:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lbc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v0, p0, Lec/m;->e:Lec/o;

    iget-object v0, v0, Lec/o;->b:Lec/t;

    iget v1, p0, Lec/m;->f:I

    iget p0, p0, Lec/m;->g:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lec/t;->B:Lec/a0;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Lec/a0;->t(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Lec/t;->b(Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
