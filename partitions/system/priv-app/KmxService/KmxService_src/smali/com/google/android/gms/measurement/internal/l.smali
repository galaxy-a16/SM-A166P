.class public final Lcom/google/android/gms/measurement/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:Lcom/google/android/gms/measurement/internal/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {p4}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {p9}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/l;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/l;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/l;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/l;->d:J

    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/l;->e:J

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-eqz p2, :cond_1

    cmp-long p2, p7, p5

    if-lez p2, :cond_1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p2

    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object p3

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string p4, "Event created with reverse previous/current timestamps. appId, name"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/l;->f:Lcom/google/android/gms/measurement/internal/n;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {p4}, Lva/n;->f(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/l;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/l;->b:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-ne p3, p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/l;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/l;->d:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/l;->e:J

    .line 4
    invoke-virtual {p7}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2, p7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_1

    .line 5
    iget-object p4, p1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    .line 6
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p5, "Param name can\'t be null"

    .line 7
    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p4, p5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p5, p1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    .line 9
    invoke-static {p5}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    .line 10
    invoke-virtual {p2, p4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p5, p6, p4}, Lcom/google/android/gms/measurement/internal/u5;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_2

    .line 11
    iget-object p5, p1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    .line 12
    iget-object p6, p1, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {p6, p4}, Lcom/google/android/gms/measurement/internal/t2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p5, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string p6, "Param value can\'t be null"

    invoke-virtual {p5, p4, p6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p6, p1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p6}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    .line 14
    invoke-virtual {p6, p2, p4, p5}, Lcom/google/android/gms/measurement/internal/u5;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {p1, p2}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/google/android/gms/measurement/internal/n;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l;->f:Lcom/google/android/gms/measurement/internal/n;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/measurement/internal/t3;J)Lcom/google/android/gms/measurement/internal/l;
    .locals 11

    new-instance v10, Lcom/google/android/gms/measurement/internal/l;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/l;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/l;->b:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/l;->d:J

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/l;->f:Lcom/google/android/gms/measurement/internal/n;

    move-object v0, v10

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/t3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/n;)V

    return-object v10
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l;->f:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event{appId=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/l;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\', params="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
