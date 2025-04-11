.class public final Lbc/b;
.super Lbc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lec/o;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbc/b;->e:I

    .line 1
    iput-object p1, p0, Lbc/b;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lbc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lec/t;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lbc/b;->e:I

    .line 2
    iput-object p2, p0, Lbc/b;->f:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lbc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    iget v0, p0, Lbc/b;->e:I

    const-wide/16 v1, -0x1

    iget-object p0, p0, Lbc/b;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lvb/a;

    invoke-interface {p0}, Lvb/a;->invoke()Ljava/lang/Object;

    return-wide v1

    :goto_0
    check-cast p0, Lec/t;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lec/t;->B:Lec/a0;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v3}, Lec/a0;->t(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lec/t;->b(Ljava/io/IOException;)V

    :goto_1
    return-wide v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
