.class public final Lcom/google/android/gms/measurement/internal/n4;
.super Lcom/google/android/gms/measurement/internal/g3;
.source "SourceFile"


# instance fields
.field public c:Lcom/google/android/gms/internal/measurement/a1;

.field public d:Lp1/e;

.field public final e:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public final h:Ljava/lang/Object;

.field public i:Lcom/google/android/gms/measurement/internal/f;

.field public j:I

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public l:J

.field public m:I

.field public final n:Lcom/google/android/gms/measurement/internal/d4;

.field public p:Z

.field public final q:Ld/s0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/g3;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n4;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n4;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/n4;->p:Z

    new-instance v0, Ld/s0;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Ld/s0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n4;->q:Ld/s0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/measurement/internal/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n4;->i:Lcom/google/android/gms/measurement/internal/f;

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/measurement/internal/n4;->j:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/n4;->l:J

    iput v0, p0, Lcom/google/android/gms/measurement/internal/n4;->m:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n4;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/google/android/gms/measurement/internal/d4;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/d4;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/n4;->n:Lcom/google/android/gms/measurement/internal/d4;

    return-void
.end method

.method public static bridge synthetic E(Lcom/google/android/gms/measurement/internal/n4;Lcom/google/android/gms/measurement/internal/f;Lcom/google/android/gms/measurement/internal/f;)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/google/android/gms/measurement/internal/zzah;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v5, v1, v2

    invoke-virtual {p2, v5}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    new-array v0, v0, [Lcom/google/android/gms/measurement/internal/zzah;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    aput-object v2, v0, v3

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    aput-object v2, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/f;->g(Lcom/google/android/gms/measurement/internal/f;[Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r2;->r()V

    return-void
.end method

.method public static F(Lcom/google/android/gms/measurement/internal/n4;Lcom/google/android/gms/measurement/internal/f;IJZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/n4;->l:J

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lb0/h;->a:Ljava/lang/Object;

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/n4;->m:I

    sget-object v3, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/f;

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_2
    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/i3;->v(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "consent_settings"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "consent_source"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/n4;->l:J

    iput p2, p0, Lcom/google/android/gms/measurement/internal/n4;->m:I

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    if-eqz p5, :cond_3

    iget-object p1, p0, Lb0/h;->a:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/t3;->q()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s2;->p()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/x4;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p1, p3}, Lcom/google/android/gms/measurement/internal/x4;-><init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/c5;->B(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_5
    return-void

    :cond_6
    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    const-string p2, "Lower precedence consent source ignored, proposed source"

    goto :goto_1
.end method


# virtual methods
.method public final A(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p4}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {p5}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    const-string v0, "allow_personalized_ads"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "false"

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-wide/16 v2, 0x1

    if-eq v1, p3, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const-string p5, "true"

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->l:Lv1/j;

    invoke-virtual {v0, p5}, Lv1/j;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    move-object p5, p0

    check-cast p5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p5, p5, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {p5}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p5, p5, Lcom/google/android/gms/measurement/internal/i3;->l:Lv1/j;

    const-string v0, "unset"

    invoke-virtual {p5, v0}, Lv1/j;->b(Ljava/lang/String;)V

    :goto_1
    const-string p5, "_npa"

    :cond_3
    move-object v5, p3

    move-object v6, p5

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p1, "User property not set since app measurement is disabled"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->h()Z

    move-result p3

    if-nez p3, :cond_5

    return-void

    :cond_5
    new-instance p3, Lcom/google/android/gms/measurement/internal/r5;

    move-object v2, p3

    move-wide v3, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object p1, p0, Lb0/h;->a:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/t3;->q()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p3, p2}, La3/v;->b(Lcom/google/android/gms/measurement/internal/r5;Landroid/os/Parcel;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->marshall()[B

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    array-length p2, p4

    const/high16 p5, 0x20000

    if-le p2, p5, :cond_6

    iget-object p1, p1, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p2, "User property too long for local database. Sending directly to service"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v1, p4}, Lcom/google/android/gms/measurement/internal/s2;->r(I[B)Z

    move-result p1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object p2

    new-instance p4, Lcom/google/android/gms/measurement/internal/w4;

    invoke-direct {p4, p0, p2, p1, p3}, Lcom/google/android/gms/measurement/internal/w4;-><init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;ZLcom/google/android/gms/measurement/internal/r5;)V

    invoke-virtual {p0, p4}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final B(Ljava/lang/Boolean;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Setting app measurement enabled (FE)"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/i3;->s(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_1

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p2}, Lb0/h;->k()V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "measurement_enabled_from_api"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean p2, v0, Lcom/google/android/gms/measurement/internal/t3;->H:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n4;->C()V

    return-void
.end method

.method public final C()V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i3;->l:Lv1/j;

    invoke-virtual {v1}, Lv1/j;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v3, "unset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v8, "app"

    const-string v9, "_npa"

    const/4 v7, 0x0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/n4;->A(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v2, v1, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x1

    :goto_0
    const-string v9, "app"

    const-string v10, "_npa"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/n4;->A(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/n4;->p:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v3, "Recording app launch after enabling measurement for the first time (FE)"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n4;->G()V

    sget-object v1, Lcom/google/android/gms/internal/measurement/a7;->b:Lcom/google/android/gms/internal/measurement/a7;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/a7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/b7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->d0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/k5;->d:Lf9/b;

    invoke-virtual {v1}, Lf9/b;->l()V

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/g4;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/g4;-><init>(Lcom/google/android/gms/measurement/internal/n4;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Updating Scion state (FE)"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/x4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/measurement/internal/x4;-><init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final D()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/n4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final G()V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v2, Lcom/google/android/gms/measurement/internal/o2;->X:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v4, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "google_analytics_deferred_deep_link_enabled"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v4, "Deferred Deep Link feature enabled."

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v4, Lcom/google/android/gms/measurement/internal/g4;

    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/measurement/internal/g4;-><init>(Lcom/google/android/gms/measurement/internal/n4;I)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v5

    iget-object v6, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->q()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v6

    new-array v7, v2, [B

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/s2;->r(I[B)Z

    new-instance v6, Lcom/google/android/gms/measurement/internal/x4;

    invoke-direct {v6, v1, v5, v4}, Lcom/google/android/gms/measurement/internal/x4;-><init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;I)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/n4;->p:Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Lb0/h;->k()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "previous_os_version"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/t3;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_po"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    invoke-virtual {v3, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance p2, Lcom/google/android/gms/measurement/internal/f4;

    const/4 p3, 0x2

    invoke-direct {p2, p0, v3, p3}, Lcom/google/android/gms/measurement/internal/f4;-><init>(Lcom/google/android/gms/measurement/internal/n4;Landroid/os/Bundle;I)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n4;->c:Lcom/google/android/gms/internal/measurement/a1;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/n4;->c:Lcom/google/android/gms/internal/measurement/a1;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 14

    move-object v0, p0

    move-object/from16 v4, p2

    if-nez p1, :cond_0

    const-string v1, "app"

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    if-nez p3, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p3

    :goto_1
    const-string v2, "screen_view"

    const/4 v5, 0x0

    if-eq v4, v2, :cond_b

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2
    if-eqz p5, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/n4;->d:Lp1/e;

    if-eqz v2, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/u5;->W(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v9, v5

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    move v9, v2

    :goto_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v7}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Landroid/os/Bundle;

    if-eqz v8, :cond_6

    new-instance v8, Landroid/os/Bundle;

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {v8, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_6
    instance-of v2, v6, [Landroid/os/Parcelable;

    if-eqz v2, :cond_8

    check-cast v6, [Landroid/os/Parcelable;

    move v2, v5

    :goto_5
    array-length v8, v6

    if-ge v2, v8, :cond_5

    aget-object v8, v6, v2

    instance-of v10, v8, Landroid/os/Bundle;

    if-eqz v10, :cond_7

    new-instance v10, Landroid/os/Bundle;

    check-cast v8, Landroid/os/Bundle;

    invoke-direct {v10, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v10, v6, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    instance-of v2, v6, Ljava/util/List;

    if-eqz v2, :cond_5

    check-cast v6, Ljava/util/List;

    move v2, v5

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Landroid/os/Bundle;

    if-eqz v10, :cond_9

    new-instance v10, Landroid/os/Bundle;

    check-cast v8, Landroid/os/Bundle;

    invoke-direct {v10, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v6, v2, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v12, Lcom/google/android/gms/measurement/internal/i4;

    move-object v1, v12

    move-object v2, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p6

    move/from16 v8, p5

    move/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/i4;-><init>(Lcom/google/android/gms/measurement/internal/n4;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/u4;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v0, Lcom/google/android/gms/measurement/internal/u4;->k:Z

    if-nez v3, :cond_c

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Cannot log screen view event when the app is in the background."

    :goto_7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_c
    const-string v3, "screen_name"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x64

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v4, v3, :cond_e

    :cond_d
    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Invalid screen name length for screen view. Length"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_8
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_e
    const-string v4, "screen_class"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v8, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v6, v3, :cond_10

    :cond_f
    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Invalid screen class length for screen view. Length"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :cond_10
    if-nez v4, :cond_12

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/u4;->g:Landroid/app/Activity;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/u4;->r(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_11
    const-string v3, "Activity"

    :goto_9
    move-object v8, v3

    goto :goto_a

    :cond_12
    move-object v8, v4

    :goto_a
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/u4;->h:Z

    if-eqz v4, :cond_13

    if-eqz v3, :cond_13

    iput-boolean v5, v0, Lcom/google/android/gms/measurement/internal/u4;->h:Z

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->x(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r4;->a:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->x(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_13

    if-eqz v3, :cond_13

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Ignoring call to log screen view event with duplicate parameters."

    goto/16 :goto_7

    :goto_b
    monitor-exit v2

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    if-nez v7, :cond_14

    const-string v3, "null"

    goto :goto_c

    :cond_14
    move-object v3, v7

    :goto_c
    if-nez v8, :cond_15

    const-string v4, "null"

    goto :goto_d

    :cond_15
    move-object v4, v8

    :goto_d
    const-string v5, "Logging screen view with name, class"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/u4;->d:Lcom/google/android/gms/measurement/internal/r4;

    goto :goto_e

    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    :goto_e
    new-instance v3, Lcom/google/android/gms/measurement/internal/r4;

    iget-object v4, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/u5;->m0()J

    move-result-wide v9

    const/4 v11, 0x1

    move-object v6, v3

    move-wide/from16 v12, p6

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/measurement/internal/r4;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/u4;->d:Lcom/google/android/gms/measurement/internal/r4;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/u4;->i:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v4, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v7, Lcom/google/android/gms/measurement/internal/y3;

    const/4 v8, 0x2

    move-object p0, v7

    move-object p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v2

    move-wide/from16 p5, v4

    move/from16 p7, v8

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/measurement/internal/y3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    :goto_f
    return-void

    :goto_10
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/n4;->s(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final s(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n4;->d:Lp1/e;

    if-eqz v1, :cond_1

    invoke-static {p5}, Lcom/google/android/gms/measurement/internal/u5;->W(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v7, v1

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/n4;->t(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    move/from16 v13, p8

    invoke-static/range {p1 .. p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v1, v7, Lb0/h;->a:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r2;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Dropping non-safelisted event. event name, origin"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1, v9, v8}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, v7, Lcom/google/android/gms/measurement/internal/n4;->f:Z

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    iput-boolean v5, v7, Lcom/google/android/gms/measurement/internal/n4;->f:Z

    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/t3;->e:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "com.google.android.gms.tagmanager.TagManagerService"

    if-nez v0, :cond_2

    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v6

    const-string v3, "initialize"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    aput-object v3, v2, v6

    invoke-virtual {v0, v15, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Tag Manager is not found and thus will not be used"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v0, "_cmp"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v16, "auto"

    const-string v17, "_lgclid"

    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v1, p0

    move v15, v5

    move-object/from16 v5, v16

    move v15, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/n4;->A(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v15, v6

    :goto_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p6, :cond_5

    sget-object v0, Lcom/google/android/gms/measurement/internal/u5;->h:[Ljava/lang/String;

    aget-object v0, v0, v15

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i3;->y:Lva/e;

    invoke-virtual {v1}, Lva/e;->l()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/measurement/internal/u5;->y(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/n4;->q:Ld/s0;

    const/16 v1, 0x28

    if-nez v13, :cond_a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "_iap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v3, "event"

    invoke-virtual {v2, v3, v9}, Lcom/google/android/gms/measurement/internal/u5;->R(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    sget-object v4, Lfc/c;->d:[Ljava/lang/String;

    sget-object v5, Lfc/c;->e:[Ljava/lang/String;

    invoke-virtual {v2, v3, v9, v4, v5}, Lcom/google/android/gms/measurement/internal/u5;->M(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v6, 0xd

    goto :goto_5

    :cond_7
    iget-object v4, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1, v3, v9}, Lcom/google/android/gms/measurement/internal/u5;->L(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_4
    const/4 v6, 0x2

    goto :goto_5

    :cond_8
    move v6, v15

    :goto_5
    if-eqz v6, :cond_a

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->h:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Invalid public event name. Event will not be logged (FE)"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v9, v1, v2}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v9, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move v15, v2

    :cond_9
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const/4 v3, 0x0

    const-string v4, "_ev"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p0, v0

    move-object/from16 p1, v3

    move/from16 p2, v6

    move-object/from16 p3, v4

    move-object/from16 p4, v1

    move/from16 p5, v15

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_a
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/u4;->q(Z)Lcom/google/android/gms/measurement/internal/r4;

    move-result-object v2

    const-string v3, "_sc"

    if-eqz v2, :cond_b

    invoke-virtual {v12, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/google/android/gms/measurement/internal/r4;->d:Z

    :cond_b
    if-eqz p6, :cond_c

    if-nez v13, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    move v6, v15

    :goto_6
    invoke-static {v2, v12, v6}, Lcom/google/android/gms/measurement/internal/u5;->x(Lcom/google/android/gms/measurement/internal/r4;Landroid/os/Bundle;Z)V

    const-string v2, "am"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/u5;->W(Ljava/lang/String;)Z

    move-result v2

    if-eqz p6, :cond_f

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n4;->d:Lp1/e;

    if-eqz v4, :cond_f

    if-nez v2, :cond_f

    if-eqz v5, :cond_d

    const/16 v17, 0x1

    goto :goto_8

    :cond_d
    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/t2;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Passing event to registered event handler (FE)"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/n4;->d:Lp1/e;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/n4;->d:Lp1/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    iget-object v0, v1, Lp1/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/k0;

    check-cast v0, Lcom/google/android/gms/internal/measurement/j0;

    invoke-virtual {v0}, Ll3/a;->c()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/measurement/x;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ll3/a;->z(Landroid/os/Parcel;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    iget-object v1, v1, Lp1/e;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lcom/google/android/gms/measurement/internal/t3;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Event interceptor threw exception"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    :goto_7
    return-void

    :cond_f
    move/from16 v17, v5

    :goto_8
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/t3;->h()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/u5;->g0(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_11

    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->h:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Invalid event name. Event will not be logged (FE)"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v9, v1, v3}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v9, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_9

    :cond_10
    move v6, v15

    :goto_9
    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v4, "_ev"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p0, v0

    move-object/from16 p1, p9

    move/from16 p2, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v1

    move/from16 p5, v6

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_11
    const-string v6, "_o"

    const-string v0, "_sn"

    const-string v1, "_si"

    filled-new-array {v6, v0, v3, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1, v9, v12, v0, v13}, Lcom/google/android/gms/measurement/internal/u5;->p0(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {v1, v15}, Lcom/google/android/gms/measurement/internal/u4;->q(Z)Lcom/google/android/gms/measurement/internal/r4;

    move-result-object v1

    const-string v5, "_ae"

    if-eqz v1, :cond_12

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/j5;->d:Lcom/google/android/gms/measurement/internal/k5;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v12, v1, Lcom/google/android/gms/measurement/internal/j5;->b:J

    sub-long v12, v2, v12

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/j5;->b:J

    const-wide/16 v1, 0x0

    cmp-long v3, v12, v1

    if-lez v3, :cond_12

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1, v0, v12, v13}, Lcom/google/android/gms/measurement/internal/u5;->v(Landroid/os/Bundle;J)V

    :cond_12
    sget-object v1, Lcom/google/android/gms/internal/measurement/r6;->b:Lcom/google/android/gms/internal/measurement/r6;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/r6;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/s6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v2, Lcom/google/android/gms/measurement/internal/o2;->c0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "auto"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_18

    const-string v1, "_ssr"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg3/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object v2, v12

    goto :goto_a

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_14
    :goto_a
    iget-object v3, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/i3;->v:Lv1/j;

    invoke-virtual {v3}, Lv1/j;->a()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_16

    if-eqz v2, :cond_15

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_b

    :cond_15
    move v3, v15

    goto :goto_c

    :cond_16
    :goto_b
    const/4 v3, 0x1

    :goto_c
    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    if-nez v3, :cond_17

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i3;->v:Lv1/j;

    invoke-virtual {v1, v2}, Lv1/j;->b(Ljava/lang/String;)V

    goto :goto_d

    :cond_17
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i3;->v:Lv1/j;

    invoke-virtual {v1}, Lv1/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_d
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i3;->n:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1a

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/i3;->u(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i3;->q:Lcom/google/android/gms/measurement/internal/e3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e3;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    const-string v18, "auto"

    const-string v19, "_sid"

    const/4 v4, 0x0

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v1, p0

    move-object v12, v5

    move-object/from16 v5, v18

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/n4;->A(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "auto"

    const-string v6, "_sno"

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/n4;->A(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "auto"

    const-string v6, "_se"

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/n4;->A(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1a
    move-object v12, v5

    move-object/from16 v20, v6

    :goto_e
    const-string v1, "extend_session"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/k5;->d:Lf9/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v10, v11, v2}, Lf9/b;->n(JZ)V

    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v15

    :goto_f
    if-ge v6, v2, :cond_21

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/os/Bundle;

    move-object/from16 p5, v1

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    new-array v1, v5, [Landroid/os/Bundle;

    check-cast v4, Landroid/os/Bundle;

    aput-object v4, v1, v15

    goto :goto_11

    :cond_1c
    instance-of v1, v4, [Landroid/os/Parcelable;

    if-eqz v1, :cond_1d

    check-cast v4, [Landroid/os/Parcelable;

    array-length v1, v4

    const-class v5, [Landroid/os/Bundle;

    invoke-static {v4, v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_1d
    instance-of v1, v4, Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_10
    check-cast v1, [Landroid/os/Bundle;

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_20

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_12

    :cond_1f
    move-object/from16 p5, v1

    :cond_20
    :goto_12
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p5

    goto :goto_f

    :cond_21
    move v5, v15

    :goto_13
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_27

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v5, :cond_22

    const-string v1, "_ep"

    move-object v2, v1

    goto :goto_14

    :cond_22
    move-object v2, v9

    :goto_14
    move-object/from16 v6, v20

    invoke-virtual {v0, v6, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_23

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/u5;->o0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_23
    move-object v4, v0

    new-instance v0, Lcom/google/android/gms/measurement/internal/o;

    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {v3, v4}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    move-object v1, v0

    move-object/from16 v25, v4

    move-object/from16 v4, p1

    move/from16 v26, v5

    move-object/from16 v27, v6

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n;Ljava/lang/String;J)V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v2, v1, Lb0/h;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->q()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v0, v3, v15}, La3/v;->a(Lcom/google/android/gms/measurement/internal/o;Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    array-length v3, v4

    const/high16 v5, 0x20000

    if-le v3, v5, :cond_24

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v3, "Event is too long for local database. Sending event directly to service"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    move/from16 v21, v15

    goto :goto_15

    :cond_24
    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/measurement/internal/s2;->r(I[B)Z

    move-result v6

    move/from16 v21, v6

    :goto_15
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v20

    new-instance v2, Lz2/f;

    const/16 v24, 0x3

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v22, v0

    move-object/from16 v23, p9

    invoke-direct/range {v18 .. v24}, Lz2/f;-><init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;ZLd3/a;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    if-nez v17, :cond_26

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/n4;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/measurement/internal/v5;

    new-instance v0, Landroid/os/Bundle;

    move-object/from16 v3, v25

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/v5;->a:Lcom/google/android/gms/internal/measurement/k0;

    check-cast v4, Lcom/google/android/gms/internal/measurement/j0;

    invoke-virtual {v4}, Ll3/a;->c()Landroid/os/Parcel;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/measurement/x;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v5, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ll3/a;->z(Landroid/os/Parcel;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_17

    :catch_3
    move-exception v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/v5;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lcom/google/android/gms/measurement/internal/t3;

    if-eqz v2, :cond_25

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v4, "Event listener threw exception"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_25
    :goto_17
    move-object/from16 v25, v3

    goto :goto_16

    :cond_26
    add-int/lit8 v5, v26, 0x1

    move-object/from16 v20, v27

    goto/16 :goto_13

    :cond_27
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/u4;->q(Z)Lcom/google/android/gms/measurement/internal/r4;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/google/android/gms/measurement/internal/j5;->a(JZZ)Z

    :cond_28
    return-void

    :cond_29
    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Event not sent since app measurement is disabled"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final u(JZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Resetting analytics data (FE)"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/j5;->c:Lcom/google/android/gms/measurement/internal/i5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j;->a()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/j5;->a:J

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/j5;->b:J

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->p0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r2;->r()V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/i3;->e:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    iget-object p1, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/i3;->v:Lv1/j;

    invoke-virtual {p2}, Lv1/j;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, v4, Lcom/google/android/gms/measurement/internal/i3;->v:Lv1/j;

    invoke-virtual {p2, v5}, Lv1/j;->b(Ljava/lang/String;)V

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/measurement/a7;->b:Lcom/google/android/gms/internal/measurement/a7;

    iget-object v6, p2, Lcom/google/android/gms/internal/measurement/a7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/b7;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v7, Lcom/google/android/gms/measurement/internal/o2;->d0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/i3;->n:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->u()Z

    move-result p1

    if-nez p1, :cond_3

    xor-int/lit8 p1, v1, 0x1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/i3;->t(Z)V

    :cond_3
    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/i3;->w:Lv1/j;

    invoke-virtual {p1, v5}, Lv1/j;->b(Ljava/lang/String;)V

    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/i3;->x:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/i3;->y:Lva/e;

    invoke-virtual {p1, v5}, Lva/e;->m(Landroid/os/Bundle;)V

    if-eqz p3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v2

    iget-object v3, p1, Lb0/h;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/t3;->q()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s2;->p()V

    new-instance v3, Lcom/google/android/gms/measurement/internal/x4;

    invoke-direct {v3, p1, v2, p3}, Lcom/google/android/gms/measurement/internal/x4;-><init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;I)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/a7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/b7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1, v5, v7}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/k5;->d:Lf9/b;

    invoke-virtual {p1}, Lf9/b;->l()V

    :cond_5
    xor-int/lit8 p1, v1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/n4;->p:Z

    return-void
.end method

.method public final v(Landroid/os/Bundle;J)V
    .locals 12

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lb0/h;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v3, "Package name should be null when calling setConditionalUserProperty"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    invoke-static {v0, p1, v1, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "name"

    invoke-static {v0, v4, v1, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "value"

    const-class v6, Ljava/lang/Object;

    invoke-static {v0, v5, v6, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "trigger_event_name"

    invoke-static {v0, v6, v1, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "trigger_timeout"

    const-class v9, Ljava/lang/Long;

    invoke-static {v0, v8, v9, v7}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "timed_out_event_name"

    invoke-static {v0, v10, v1, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "timed_out_event_params"

    const-class v11, Landroid/os/Bundle;

    invoke-static {v0, v10, v11, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "triggered_event_name"

    invoke-static {v0, v10, v1, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "triggered_event_params"

    invoke-static {v0, v10, v11, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "time_to_live"

    invoke-static {v0, v10, v9, v7}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "expired_event_name"

    invoke-static {v0, v7, v1, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "expired_event_params"

    invoke-static {v0, v1, v11, v3}, Lg2/m;->q(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    const-string p1, "creation_timestamp"

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p3, v2, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/u5;->j0(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, v2, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/measurement/internal/u5;->f0(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, v2, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/measurement/internal/u5;->p(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p3, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "Unable to normalize conditional user property value"

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {v0, p3}, Lg2/m;->r(Landroid/os/Bundle;Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v3, 0x1

    const-wide v5, 0x39ef8b000L

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v1, p2, v5

    if-gtz v1, :cond_2

    cmp-long v1, p2, v3

    if-gez v1, :cond_3

    :cond_2
    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "Invalid conditional user property timeout"

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v0, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v1, p2, v5

    if-gtz v1, :cond_5

    cmp-long v1, p2, v3

    if-gez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance p2, Lcom/google/android/gms/measurement/internal/f4;

    const/4 p3, 0x1

    invoke-direct {p2, p0, v0, p3}, Lcom/google/android/gms/measurement/internal/f4;-><init>(Lcom/google/android/gms/measurement/internal/n4;Landroid/os/Bundle;I)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_0
    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "Invalid conditional user property time to live"

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p3, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "Invalid conditional user property value"

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p2, v2, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p2, "Invalid conditional user property name"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final w(Landroid/os/Bundle;IJ)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    sget-object v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/f;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->values()[Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzah;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzah;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "granted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    const-string v5, "denied"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Ignoring invalid consent setting"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/f;->a(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/n4;->x(Lcom/google/android/gms/measurement/internal/f;IJ)V

    return-void
.end method

.method public final x(Lcom/google/android/gms/measurement/internal/f;IJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    const/16 v10, -0xa

    if-eq v9, v10, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/f;->a:Ljava/util/EnumMap;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/f;->a:Ljava/util/EnumMap;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Discarding empty consent settings"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/n4;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/n4;->i:Lcom/google/android/gms/measurement/internal/f;

    iget v3, v0, Lcom/google/android/gms/measurement/internal/n4;->j:I

    sget-object v4, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v9, v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/f;->a:Ljava/util/EnumMap;

    invoke-virtual {v3}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v3

    new-array v6, v4, [Lcom/google/android/gms/measurement/internal/zzah;

    invoke-interface {v3, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v1, v11, v3}, Lcom/google/android/gms/measurement/internal/f;->g(Lcom/google/android/gms/measurement/internal/f;[Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/n4;->i:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    :cond_3
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/n4;->i:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/f;->d(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/n4;->i:Lcom/google/android/gms/measurement/internal/f;

    iput v9, v0, Lcom/google/android/gms/measurement/internal/n4;->j:I

    move v12, v4

    move v4, v5

    move v15, v3

    move-object v3, v1

    move v1, v15

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_4
    move-object v3, v1

    move v1, v4

    move v12, v1

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Ignoring lower-priority consent settings, proposed settings"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/n4;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/n4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v14, Lcom/google/android/gms/measurement/internal/k4;

    move-object v1, v14

    move-object/from16 v2, p0

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move v9, v12

    move-object v10, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/k4;-><init>(Lcom/google/android/gms/measurement/internal/n4;Lcom/google/android/gms/measurement/internal/f;JIJZLcom/google/android/gms/measurement/internal/f;)V

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/s3;->t(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    new-instance v13, Lcom/google/android/gms/measurement/internal/l4;

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-wide v5, v7

    move v7, v12

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/l4;-><init>(Lcom/google/android/gms/measurement/internal/n4;Lcom/google/android/gms/measurement/internal/f;IJZLcom/google/android/gms/measurement/internal/f;)V

    const/16 v1, 0x1e

    if-eq v9, v1, :cond_8

    if-ne v9, v10, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    :goto_3
    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/s3;->t(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final y(Lcom/google/android/gms/measurement/internal/f;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c5;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/t3;->H:Z

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/t3;->H:Z

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/n4;->B(Ljava/lang/Boolean;Z)V

    :cond_5
    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 12

    move-object v1, p0

    move-object v3, p2

    move-object v0, p3

    if-nez p1, :cond_0

    const-string v2, "app"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    iget-object v4, v1, Lb0/h;->a:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    const/4 v6, 0x0

    const/16 v7, 0x18

    if-eqz p4, :cond_1

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v8, p2}, Lcom/google/android/gms/measurement/internal/u5;->j0(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_1
    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v9, "user property"

    invoke-virtual {v8, v9, p2}, Lcom/google/android/gms/measurement/internal/u5;->R(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    sget-object v10, Lg2/m;->c:[Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, p2, v10, v11}, Lcom/google/android/gms/measurement/internal/u5;->M(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const/16 v8, 0xf

    goto :goto_2

    :cond_3
    iget-object v10, v8, Lb0/h;->a:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v7, v9, p2}, Lcom/google/android/gms/measurement/internal/u5;->L(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    :goto_1
    const/4 v8, 0x6

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/n4;->q:Ld/s0;

    const/4 v10, 0x1

    if-eqz v8, :cond_6

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v7, v10}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    :cond_5
    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const/4 v2, 0x0

    const-string v3, "_ev"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v9

    move-object p1, v2

    move p2, v8

    move-object p3, v3

    move-object/from16 p4, v0

    :goto_3
    move/from16 p5, v6

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz v0, :cond_b

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v8, p3, p2}, Lcom/google/android/gms/measurement/internal/u5;->f0(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_9

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v7, v10}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_7

    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    :cond_8
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const/4 v2, 0x0

    const-string v3, "_ev"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v9

    move-object p1, v2

    move p2, v8

    move-object p3, v3

    move-object/from16 p4, v1

    goto :goto_3

    :cond_9
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v5, p3, p2}, Lcom/google/android/gms/measurement/internal/u5;->p(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v9, Lcom/google/android/gms/measurement/internal/y3;

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object v3, p2

    move-object v4, v5

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/y3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v9, Lcom/google/android/gms/measurement/internal/y3;

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object v3, p2

    move-object v4, v5

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/y3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method
