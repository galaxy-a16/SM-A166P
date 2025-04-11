.class public final Lcom/google/android/gms/measurement/internal/b;
.super Lcom/google/android/gms/measurement/internal/n5;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/util/HashSet;

.field public f:Ll/b;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/q5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/n5;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 0

    return-void
.end method

.method public final o(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/x5;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->f:Ll/b;

    invoke-virtual {v0, p1}, Ll/j;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/b;->f:Ll/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/x5;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/x5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/x5;-><init>(Lcom/google/android/gms/measurement/internal/b;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/b;->f:Ll/b;

    invoke-virtual {p0, p1, v0}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
