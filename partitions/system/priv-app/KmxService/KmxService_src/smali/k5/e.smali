.class public final Lk5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5/h;


# instance fields
.field public final a:Lk5/i;

.field public final b:Lr3/i;


# direct methods
.method public constructor <init>(Lk5/i;Lr3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/e;->a:Lk5/i;

    iput-object p2, p0, Lk5/e;->b:Lr3/i;

    return-void
.end method


# virtual methods
.method public final a(Ll5/a;)Z
    .locals 9

    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->REGISTERED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    iget-object v1, p1, Ll5/a;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Lk5/e;->a:Lk5/i;

    invoke-virtual {v0, p1}, Lk5/i;->b(Ll5/a;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lva/f;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lva/f;-><init>(I)V

    iget-object v1, p1, Ll5/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    iput-object v1, v0, Lva/f;->a:Ljava/lang/Object;

    iget-wide v3, p1, Ll5/a;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lva/f;->b:Ljava/lang/Object;

    iget-wide v3, p1, Ll5/a;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lva/f;->c:Ljava/lang/Object;

    iget-object p1, v0, Lva/f;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, " token"

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    iget-object v1, v0, Lva/f;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " tokenExpirationTimestamp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v1, v0, Lva/f;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_3

    const-string v1, " tokenCreationTimestamp"

    invoke-static {p1, v1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lk5/a;

    iget-object v1, v0, Lva/f;->a:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, v0, Lva/f;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v0, Lva/f;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lk5/a;-><init>(Ljava/lang/String;JJ)V

    iget-object p0, p0, Lk5/e;->b:Lr3/i;

    invoke-virtual {p0, p1}, Lr3/i;->a(Ljava/lang/Object;)V

    return v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required properties:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null token"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return v3
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 0

    iget-object p0, p0, Lk5/e;->b:Lr3/i;

    invoke-virtual {p0, p1}, Lr3/i;->b(Ljava/lang/Exception;)Z

    const/4 p0, 0x1

    return p0
.end method
