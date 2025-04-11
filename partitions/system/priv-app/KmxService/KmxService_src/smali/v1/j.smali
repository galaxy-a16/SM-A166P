.class public final Lv1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv1/j;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/j;->b:Ljava/lang/Object;

    iput-object v0, p0, Lv1/j;->c:Ljava/lang/Object;

    iput-object p1, p0, Lv1/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lv1/j;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lva/n;->f(Ljava/lang/String;)V

    iput-object p2, p0, Lv1/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lv1/a;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv1/j;->a:Z

    iput-object p1, p0, Lv1/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv1/j;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lv1/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lv1/j;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv1/j;->a:Z

    iget-object v0, p0, Lv1/j;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/i3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lv1/j;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv1/j;->c:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lv1/j;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lv1/j;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/i3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lv1/j;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object p1, p0, Lv1/j;->c:Ljava/lang/Object;

    return-void
.end method
