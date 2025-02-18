.class Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private SetCharSequenceItems:[Ljava/lang/CharSequence;

.field private m_Paramet:Landroid/widget/AdapterView;

.field private m_i32Position:I

.field private m_i64ID:J

.field private strStreamFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 151
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$1300(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)I
    .locals 0

    .line 149
    iget p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_i32Position:I

    return p0
.end method

.method static synthetic access$1400(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)Landroid/widget/AdapterView;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_Paramet:Landroid/widget/AdapterView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)[Ljava/lang/CharSequence;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)Ljava/lang/String;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_Paramet:Landroid/widget/AdapterView;

    .line 160
    iput p3, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_i32Position:I

    .line 161
    iput-wide p4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_i64ID:J

    .line 163
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object p1

    iget p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_i32Position:I

    aget p1, p1, p2

    const/16 p2, 0xa3

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$600()[I

    move-result-object p1

    iget p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_i32Position:I

    aget p1, p1, p2

    const/16 p2, 0xa7

    if-eq p1, p2, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$700(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    const-string p1, ""

    .line 167
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;

    .line 169
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p3}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$800(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$900()[Ljava/lang/String;

    move-result-object p3

    iget p4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_i32Position:I

    aget-object p3, p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 p3, 0x400

    div-long/2addr p1, p3

    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1000()[I

    move-result-object p3

    iget p4, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_i32Position:I

    aget p3, p3, p4

    int-to-long p3, p3

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    .line 174
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1100(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$800(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$900()[Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->m_i32Position:I

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;

    .line 179
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->this$0:Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;

    invoke-static {p2}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;->access$1200(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    new-instance p2, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$1;

    invoke-direct {p2, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$1;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)V

    const-string p3, "Cancel"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    iget-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    new-instance p3, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;

    invoke-direct {p3, p0}, Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2$2;-><init>(Lcom/generalplus/GoPlusDrone/Activity/FilesActivity$2;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p2, 0x0

    .line 345
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 346
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
