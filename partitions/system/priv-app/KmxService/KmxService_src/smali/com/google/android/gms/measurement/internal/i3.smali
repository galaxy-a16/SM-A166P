.class public final Lcom/google/android/gms/measurement/internal/i3;
.super Lcom/google/android/gms/measurement/internal/a4;
.source "SourceFile"


# static fields
.field public static final z:Landroid/util/Pair;


# instance fields
.field public c:Landroid/content/SharedPreferences;

.field public d:Lcom/google/android/gms/measurement/internal/h3;

.field public final e:Lcom/google/android/gms/measurement/internal/f3;

.field public final f:Lv1/j;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:J

.field public final j:Lcom/google/android/gms/measurement/internal/f3;

.field public final k:Lcom/google/android/gms/measurement/internal/e3;

.field public final l:Lv1/j;

.field public final m:Lcom/google/android/gms/measurement/internal/e3;

.field public final n:Lcom/google/android/gms/measurement/internal/f3;

.field public p:Z

.field public final q:Lcom/google/android/gms/measurement/internal/e3;

.field public final t:Lcom/google/android/gms/measurement/internal/e3;

.field public final u:Lcom/google/android/gms/measurement/internal/f3;

.field public final v:Lv1/j;

.field public final w:Lv1/j;

.field public final x:Lcom/google/android/gms/measurement/internal/f3;

.field public final y:Lva/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/i3;->z:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/a4;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    const-string v0, "session_timeout"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->j:Lcom/google/android/gms/measurement/internal/f3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/e3;

    const-string v0, "start_new_session"

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/e3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->k:Lcom/google/android/gms/measurement/internal/e3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    const-string v0, "last_pause_time"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->n:Lcom/google/android/gms/measurement/internal/f3;

    new-instance p1, Lv1/j;

    const-string v0, "non_personalized_ads"

    invoke-direct {p1, p0, v0}, Lv1/j;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->l:Lv1/j;

    new-instance p1, Lcom/google/android/gms/measurement/internal/e3;

    const-string v0, "allow_remote_dynamite"

    const/4 v3, 0x0

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/e3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->m:Lcom/google/android/gms/measurement/internal/e3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->e:Lcom/google/android/gms/measurement/internal/f3;

    const-string p1, "app_install_time"

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    new-instance p1, Lv1/j;

    const-string v0, "app_instance_id"

    invoke-direct {p1, p0, v0}, Lv1/j;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->f:Lv1/j;

    new-instance p1, Lcom/google/android/gms/measurement/internal/e3;

    const-string v0, "app_backgrounded"

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/e3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->q:Lcom/google/android/gms/measurement/internal/e3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/e3;

    const-string v0, "deep_link_retrieval_complete"

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/e3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->t:Lcom/google/android/gms/measurement/internal/e3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    const-string v0, "deep_link_retrieval_attempts"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->u:Lcom/google/android/gms/measurement/internal/f3;

    new-instance p1, Lv1/j;

    const-string v0, "firebase_feature_rollouts"

    invoke-direct {p1, p0, v0}, Lv1/j;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->v:Lv1/j;

    new-instance p1, Lv1/j;

    const-string v0, "deferred_attribution_cache"

    invoke-direct {p1, p0, v0}, Lv1/j;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->w:Lv1/j;

    new-instance p1, Lcom/google/android/gms/measurement/internal/f3;

    const-string v0, "deferred_attribution_cache_timestamp"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->x:Lcom/google/android/gms/measurement/internal/f3;

    new-instance p1, Lva/e;

    invoke-direct {p1, p0}, Lva/e;-><init>(Lcom/google/android/gms/measurement/internal/i3;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->y:Lva/e;

    return-void
.end method


# virtual methods
.method public final l()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final o()Landroid/content/SharedPreferences;
    .locals 1

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i3;->c:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/i3;->c:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    const-string v2, "com.google.android.gms.measurement.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/i3;->c:Landroid/content/SharedPreferences;

    const-string v2, "has_been_opened"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/i3;->p:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i3;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/h3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/measurement/internal/o2;->d:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/measurement/internal/h3;-><init>(Lcom/google/android/gms/measurement/internal/i3;J)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/i3;->d:Lcom/google/android/gms/measurement/internal/h3;

    return-void
.end method

.method public final q()Lcom/google/android/gms/measurement/internal/f;
    .locals 2

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "consent_settings"

    const-string v1, "G1"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Lb0/h;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "measurement_enabled"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final t(Z)V
    .locals 3

    invoke-virtual {p0}, Lb0/h;->k()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "App measurement setting deferred collection"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "deferred_analytics_collection"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final u(J)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i3;->j:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/i3;->n:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "consent_source"

    const/16 v1, 0x64

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/f;

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
