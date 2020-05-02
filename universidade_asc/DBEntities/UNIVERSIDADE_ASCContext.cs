using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.Extensions.Configuration;
using universidade_asc.DBEntities;
using universidade_asc.Helper;

namespace universidade_asc
{
    public partial class UNIVERSIDADE_ASCContext : DbContext
    {
        public UNIVERSIDADE_ASCContext()
        {
        }

        public UNIVERSIDADE_ASCContext(DbContextOptions<UNIVERSIDADE_ASCContext> options)
            : base(options)
        {
        }

        public virtual DbSet<TbResultadoPeriodo> TbResultadoPeriodo { get; set; }
        public virtual DbSet<TblAluno> TblAluno { get; set; }
        public virtual DbSet<TblMateria> TblMateria { get; set; }
        public virtual DbSet<TblTurma> TblTurma { get; set; }

        public virtual DbSet<Result_spCadastraMaterias> spCadastraMaterias { get; set; }
        public virtual DbSet<Result_spRoboticCadastraTurmas> spRoboticCadastraTurmas { get; set; }
        public virtual DbSet<Result_spSimulaPeriodo> spSimulaPeriodo { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                IConfigurationRoot configuration = new ConfigurationBuilder()
                           .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
                           .AddJsonFile("appsettings.json")
                           .Build();
                optionsBuilder.UseSqlServer(configuration.GetConnectionString("myConn"));
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.0-rtm-35687");

            modelBuilder.Entity<TbResultadoPeriodo>(entity =>
            {
                entity.HasKey(e => e.IdResultadoPeriodo)
                    .HasName("PK_tbResultadoPeriodo");

                entity.ToTable("tb_resultado_periodo");

                entity.Property(e => e.IdResultadoPeriodo).HasColumnName("idResultadoPeriodo");

                entity.Property(e => e.DtInsert)
                    .HasColumnName("dtInsert")
                    .HasColumnType("datetime");

                entity.Property(e => e.IdAluno).HasColumnName("idAluno");

                entity.Property(e => e.IdMateria).HasColumnName("idMateria");

                entity.Property(e => e.NotaAv1).HasColumnName("notaAV1");

                entity.Property(e => e.NotaAv2)
                    .HasColumnName("notaAV2")
                    .HasColumnType("decimal(18, 1)");

                entity.Property(e => e.NotaAv3)
                    .HasColumnName("notaAV3")
                    .HasColumnType("decimal(18, 1)");

                entity.Property(e => e.NotaFinal)
                    .HasColumnName("notaFinal")
                    .HasColumnType("decimal(18, 1)");

                entity.Property(e => e.Resultado)
                    .HasColumnName("resultado")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TblAluno>(entity =>
            {
                entity.HasKey(e => e.IdAluno);

                entity.ToTable("tbl_aluno");

                entity.Property(e => e.IdAluno).HasColumnName("idAluno");

                entity.Property(e => e.DtInsert)
                    .HasColumnName("dtInsert")
                    .HasColumnType("datetime");

                entity.Property(e => e.IdTurma).HasColumnName("idTurma");

                entity.Property(e => e.NmAluno)
                    .HasColumnName("nmAluno")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TblMateria>(entity =>
            {
                entity.HasKey(e => e.IdMateria);

                entity.ToTable("tbl_materia");

                entity.Property(e => e.IdMateria).HasColumnName("idMateria");

                entity.Property(e => e.DcMateria)
                    .HasColumnName("dcMateria")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.PesoAv1).HasColumnName("pesoAV1");

                entity.Property(e => e.PesoAv2).HasColumnName("pesoAV2");

                entity.Property(e => e.PesoAv3).HasColumnName("pesoAV3");
            });

            modelBuilder.Entity<TblTurma>(entity =>
            {
                entity.HasKey(e => e.IdTurma);

                entity.ToTable("tbl_turma");

                entity.Property(e => e.IdTurma).HasColumnName("idTurma");

                entity.Property(e => e.DcTurma)
                    .HasColumnName("dcTurma")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.DtInsert)
                    .HasColumnName("dtInsert")
                    .HasColumnType("datetime");
            });



            modelBuilder.Entity<Result_spCadastraMaterias>(entity =>
            {
                entity.HasKey(e => e.RETORNO);

                entity.ToTable("Result_spCadastraMaterias");

                entity.Property(e => e.RETORNO).HasColumnName("RETORNO");

                entity.Property(e => e.RETORNO_MESSAGE)
                    .HasColumnName("RETORNO_MESSAGE")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Result_spRoboticCadastraTurmas>(entity =>
            {
                entity.HasKey(e => e.RETORNO);

                entity.ToTable("Result_spRoboticCadastraTurmas");

                entity.Property(e => e.RETORNO).HasColumnName("RETORNO");

                entity.Property(e => e.RETORNO_MESSAGE)
                    .HasColumnName("RETORNO_MESSAGE")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Result_spSimulaPeriodo>(entity =>
            {
                entity.HasKey(e => e.RETORNO);

                entity.ToTable("Result_spSimulaPerido");

                entity.Property(e => e.RETORNO).HasColumnName("RETORNO");

                entity.Property(e => e.RETORNO_MESSAGE)
                    .HasColumnName("RETORNO_MESSAGE")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });
        }
    }
}
