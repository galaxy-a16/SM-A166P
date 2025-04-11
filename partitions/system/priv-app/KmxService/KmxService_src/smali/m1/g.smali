.class public final Lm1/g;
.super Lm1/b;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "NetworkNotRoamingCtrlr"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"NetworkNotRoamingCtrlr\")"

    invoke-static {v0, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ln1/f;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm1/b;-><init>(Ln1/f;)V

    return-void
.end method


# virtual methods
.method public final a(Lp1/q;)Z
    .locals 0

    const-string p0, "workSpec"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lp1/q;->j:Landroidx/work/d;

    iget-object p0, p0, Landroidx/work/d;->a:Landroidx/work/NetworkType;

    sget-object p1, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ll1/a;

    const-string p0, "value"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Ll1/a;->a:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Ll1/a;->d:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
