.class public final Lk5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5/h;


# instance fields
.field public final a:Lr3/i;


# direct methods
.method public constructor <init>(Lr3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/f;->a:Lr3/i;

    return-void
.end method


# virtual methods
.method public final a(Ll5/a;)Z
    .locals 4

    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->UNREGISTERED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Ll5/a;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->REGISTERED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-ne v3, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->REGISTER_ERROR:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-ne v3, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    iget-object p0, p0, Lk5/f;->a:Lr3/i;

    iget-object p1, p1, Ll5/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lr3/i;->c(Ljava/lang/Object;)V

    return v1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
